//triangle.hpp

#include "shape.hpp"
#ifndef TRIANGLE_H // include guard
#define TRIANGLE_H

namespace rightTriangle2D
{
    class Triangle : public generalShape::Shape {

        private :

            double base;
            double height;

        public :

            // Read in rectangle parameters.
            void read(/* no args */);
            
            // Calculate area of a rectangle object
            double area(/* no args */) ;

            void show(/* no args */);
            
            ~Triangle();
    };
}

#endif /* TRIANGLE_H */