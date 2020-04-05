//shape.hpp

#ifndef SHAPE_H // include guard
#define SHAPE_H

namespace generalShape
{
    class Shape {

        // Private members not used for abstract class as it only gives interface

        public :
            
            // Interface for reading-in size parameters of objects
            virtual void read() ;
            
            // Interface to calculate Area of an object
            virtual double area() ;
            
    };
}

#endif /* SHAPE_H */