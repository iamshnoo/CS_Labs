// shapestack.hpp

#include <iostream>
#include "rectangle.hpp"
#include "triangle.hpp"
#include "circle.hpp"
#include "shape.hpp"
#ifndef SHAPESTACK_H // include guard
#define SHAPESTACK_H

using namespace generalShape;
using namespace rect2D;
using namespace rightTriangle2D;
using namespace circle2D;

namespace Stack
{
    class MyStack {

        private:
        
        int top;
        static const int maxsize = 5; // Default value of the maximum elements in one stack.
        int stacksize; // To allow user to define max stack size.
        Shape **data; 
        
        public:

        // Default constructor
        MyStack(/* no args */);

        // Parameterized constructor
        MyStack(int t_size = maxsize);

        void Push(int t_choice = 0);
        
        void Pop(/* no args */);

        // Display contents of stack;
        void Display(/* no args */);

        // Total area contained by stack objects.
        void area_sum(/* no args */);

        // destructor
        ~MyStack();

    };

}

#endif