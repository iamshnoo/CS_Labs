//rectangle.hpp

#include "shape.hpp"
#ifndef RECTANGLE_H // include guard
#define RECTANGLE_H

namespace rect2D
{
    class Rectangle : public generalShape::Shape {

        private :

            double length;
            double breadth;

        public :
    
            // Read in rectangle parameters.
            void read(/* no args */);
            
            // Calculate area of a rectangle object
            double area(/* no args */) ;

            void show(/* no args */);
            
            ~Rectangle();
    };
}

#endif /* RECTANGLE_H */