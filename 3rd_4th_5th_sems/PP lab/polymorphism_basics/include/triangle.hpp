//triangle.hpp

#include "shape.hpp"
#ifndef TRIANGLE_H // include guard
#define TRIANGLE_H

using namespace generalShape;

namespace rightTriangle2D
{
    class Triangle {

        private :

            double base;
            double height;

        public :

            // Read in rectangle parameters.
            void read(/* no args */);
            
            // Calculate area of a rectangle object
            double area(/* no args */) ;
            
    };
}

#endif /* TRIANGLE_H */