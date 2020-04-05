//rectangle.hpp

#include "shape.hpp"
#ifndef RECTANGLE_H // include guard
#define RECTANGLE_H

using namespace generalShape;

namespace rect2D
{
    class Rectangle : public Shape {

        private :

            double length;
            double breadth;

        public :
    
            // Read in rectangle parameters.
            void read(/* no args */);
            
            // Calculate area of a rectangle object
            double area(/* no args */) ;
            
            ~Rectangle();
    };
}

#endif /* RECTANGLE_H */