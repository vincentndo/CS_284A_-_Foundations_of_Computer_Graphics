#include "rasterizer.h"

using namespace std;

namespace CGL {

RasterizerImp::RasterizerImp(PixelSampleMethod psm, LevelSampleMethod lsm,
                                       size_t width, size_t height,
                                       unsigned int sample_rate) {
  this->psm = psm;
  this->lsm = lsm;
  this->width = width;
  this->height = height;
  this->sample_rate = sample_rate;

  supersample_buffer.resize(width * height * sample_rate, Color::White);
}

// Used by rasterize_point and rasterize_line
void RasterizerImp::fill_pixel(size_t x, size_t y, Color c) {
  // TODO: Task 2: You might need to this function to fix points and lines (such as the black rectangle border in test4.svg)
  // NOTE: You are not required to implement proper supersampling for points and lines
  // It is sufficient to use the same color for all supersamples of a pixel for points and lines (not triangles)

  rgb_framebuffer_target[3 * (y * width + x)    ] = (unsigned char)(c.r * 255);
  rgb_framebuffer_target[3 * (y * width + x) + 1] = (unsigned char)(c.g * 255);
  rgb_framebuffer_target[3 * (y * width + x) + 2] = (unsigned char)(c.b * 255);

  for (int i = 0; i < sample_rate; i++) {
      supersample_buffer[(y * width + x) * sample_rate + i] = c;
  }
}

// Optional helper function to add a sample to the supersample_buffer
void RasterizerImp::fill_supersample(size_t x, size_t y, size_t s, Color c) {
  // TODO: Task 2: You may want to implement this function. Hint: our solution uses one line

  supersample_buffer[(y * width + x) * sample_rate + s] = c;

};

// Rasterize a point: simple example to help you start familiarizing
// yourself with the starter code.
//
void RasterizerImp::rasterize_point(float x, float y, Color color) {
  // fill in the nearest pixel
  int sx = (int)floor(x);
  int sy = (int)floor(y);

  // check bounds
  if (sx < 0 || sx >= width) return;
  if (sy < 0 || sy >= height) return;

  fill_pixel(sx, sy, color);
  return;
}

// Rasterize a line.
void RasterizerImp::rasterize_line(float x0, float y0,
  float x1, float y1,
  Color color) {
  if (x0 > x1) {
    swap(x0, x1); swap(y0, y1);
  }

  float pt[] = { x0,y0 };
  float m = (y1 - y0) / (x1 - x0);
  float dpt[] = { 1,m };
  int steep = abs(m) > 1;
  if (steep) {
    dpt[0] = x1 == x0 ? 0 : 1 / abs(m);
    dpt[1] = x1 == x0 ? (y1 - y0) / abs(y1 - y0) : m / abs(m);
  }

  while (floor(pt[0]) <= floor(x1) && abs(pt[1] - y0) <= abs(y1 - y0)) {
    rasterize_point(pt[0], pt[1], color);
    pt[0] += dpt[0]; pt[1] += dpt[1];
  }
}

// Line test for a point to be inside a triangle
bool line_test(float x, float y,
               float x1, float y1,
               float x2, float y2) {
    return -(x - x1) * (y2 - y1) + (y - y1) * (x2 - x1) >= 0;
}

// Rasterize a triangle.
void RasterizerImp::rasterize_triangle(float x0, float y0,
                                       float x1, float y1,
                                       float x2, float y2,
                                       Color color) {
  // TODO: Task 1: Implement basic triangle rasterization here, no supersampling

  int x_min = (int) fmax( fmin(x0, fmin(x1, x2)), 0 );
  int x_max = (int) fmin( fmax(x0, fmax(x1, x2)), width - 1 );
  int y_min = (int) fmax( fmin(y0, fmin(y1, y2)), 0 );
  int y_max = (int) fmin( fmax(y0, fmax(y1, y2)), height - 1);

  // Check counterclockwise: v1 = (x1 - x0, y1 - y0), v2 = (x2 - x0, y2 - y0)
  float cross_product = (x1 - x0) * (y2 - y0) - (x2 - x0) * (y1 - y0);

  if (cross_product < 0) {
      swap(x1, x2);
      swap(y1, y2);
  }

  float sx, sy;
  bool inside;

//  for (int y = y_min; y <= y_max; y++) {
//      sy = y + 0.5;
//
//      for (int x = x_min; x <= x_max; x++) {
//
//          sx = x + 0.5;
//          inside = line_test(sx, sy, x0, y0, x1, y1) &&
//                   line_test(sx, sy, x1, y1, x2, y2) &&
//                   line_test(sx, sy, x2, y2, x0, y0);
//
//          if (inside) {
//              rasterize_point(sx, sy, color);
//          }
//      }
//  }

  // TODO: Task 2: Update to implement super-sampled rasterization

  unsigned int sample_rate_sqrt = sqrt(sample_rate);
  float spacing = 1.0 / sample_rate_sqrt;
  float half_spacing = spacing / 2;
  float sx_0, sy_0;

  for (int y = y_min; y <= y_max; y++) {
      sy_0 = y + half_spacing;

      for (int x = x_min; x <= x_max; x++) {
          sx_0 = x + half_spacing;
          Color c = Color::Black;
          bool rasterize_flag = false;

          for (int j = 0; j < sample_rate_sqrt; j++) {
              sy = sy_0 + j * spacing;

              for (int i = 0; i < sample_rate_sqrt; i++) {
                  sx = sx_0 + i * spacing;

                  inside = line_test(sx, sy, x0, y0, x1, y1) &&
                           line_test(sx, sy, x1, y1, x2, y2) &&
                           line_test(sx, sy, x2, y2, x0, y0);

                  if (inside) {
                      rasterize_flag = true;
                      supersample_buffer[(y * width + x) * sample_rate + j * sample_rate_sqrt + i] = color;
                      c += color;
                  } else {
                      c += Color::White;
                  }
              }
          }
          c *= 1.0 / sample_rate;

          if (rasterize_flag) {
              rasterize_point(x, y, c);
          }
        }
    }
        std::cout << "end rasterize triangle" << std::endl;
}


void RasterizerImp::rasterize_interpolated_color_triangle(float x0, float y0, Color c0,
                                                          float x1, float y1, Color c1,
                                                          float x2, float y2, Color c2)
{
  // TODO: Task 4: Rasterize the triangle, calculating barycentric coordinates and using them to interpolate vertex colors across the triangle
  // Hint: You can reuse code from rasterize_triangle

}

void RasterizerImp::rasterize_textured_triangle(float x0, float y0, float u0, float v0,
    float x1, float y1, float u1, float v1,
    float x2, float y2, float u2, float v2,
    Texture& tex)
{
    // TODO: Task 5: Fill in the SampleParams struct and pass it to the tex.sample function.
    // TODO: Task 6: Set the correct barycentric differentials in the SampleParams struct.
    // Hint: You can reuse code from rasterize_triangle/rasterize_interpolated_color_triangle

}

void RasterizerImp::set_sample_rate(unsigned int rate) {
  // TODO: Task 2: You may want to update this function for supersampling support

  this->sample_rate = rate;
  this->supersample_buffer.resize(width * height * sample_rate, Color::White);

}


void RasterizerImp::set_framebuffer_target( unsigned char* rgb_framebuffer,
                                                size_t width, size_t height )
{
  // TODO: Task 2: You may want to update this function for supersampling support

  this->width = width;
  this->height = height;
  this->rgb_framebuffer_target = rgb_framebuffer;
  this->supersample_buffer.resize(width * height * sample_rate, Color::White);
  
}


void RasterizerImp::clear_buffers() {
  // TODO: Task 2: You may want to update this function for supersampling support
  // Hint: With supersampling, you have an additional buffer to take care of

  std::fill(rgb_framebuffer_target, rgb_framebuffer_target + 3 * width * height, 255);
  std::fill(supersample_buffer.begin(), supersample_buffer.end(), Color::White);

}


// This function is called at the end of rasterizing all elements of the
// SVG file.  If you use a supersample buffer to rasterize SVG elements
// for antialising, you could use this call to fill the target framebuffer
// pixels from the supersample buffer data.
//
void RasterizerImp::resolve_to_framebuffer() {
  // TODO: Task 2: You will likely want to update this function for supersampling support
  std::cout << "here" << std::endl;
  size_t pix_num = width * height;
  size_t samplebuffer_pos, framebuffer_pos;

  for (size_t i = 0; i < pix_num; i++) {
      samplebuffer_pos = i * sample_rate;
      framebuffer_pos = i * 3;
      Color c = Color::Black;

      for (int j = 0; j < sample_rate; j++) {
          c += supersample_buffer[samplebuffer_pos + j];
      }
      c *= 1.0 / sample_rate;

      rgb_framebuffer_target[framebuffer_pos    ] = (unsigned char)(c.r * 255);
      rgb_framebuffer_target[framebuffer_pos + 1] = (unsigned char)(c.g * 255);
      rgb_framebuffer_target[framebuffer_pos + 2] = (unsigned char)(c.b * 255);
  }
}

Rasterizer::~Rasterizer() { }


}// CGL
