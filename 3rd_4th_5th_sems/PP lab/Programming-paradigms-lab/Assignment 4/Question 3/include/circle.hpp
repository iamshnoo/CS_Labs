//circle.hpp

#include "shape.hpp"
#ifndef CIRCLE_H // include guard
#define CIRCLE_H

using namespace generalShape;

namespace circle2D
{
    class Circle : public Shape {

        private :

            double radius;

        public :

            // Read in rectangle parameters.
            void read(/* no args */);
            
            // Calculate area of a rectangle object
            double area(/* no args */) ;
    
            ~Circle();
    };
}

#endif /* CIRCLE_H */