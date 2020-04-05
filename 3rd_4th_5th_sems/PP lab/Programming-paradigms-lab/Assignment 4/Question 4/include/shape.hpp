//shape.hpp

#ifndef SHAPE_H // include guard
#define SHAPE_H

namespace generalShape
{
    class Shape {

        // Private members not used for abstract class as it only gives interface

        public :
            
            // Interface for reading-in size parameters of objects
            virtual void read() = 0;
            
            // Interface to calculate Area of an object
            virtual double area() = 0;

            virtual void show() = 0;

            virtual ~Shape() = 0;
            
    };
}

#endif /* SHAPE_H */