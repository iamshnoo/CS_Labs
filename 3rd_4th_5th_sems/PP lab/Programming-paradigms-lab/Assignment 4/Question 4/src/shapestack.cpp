// shapestack.cpp

#include "rectangle.hpp"
#include "triangle.hpp"
#include "circle.hpp"
#include "shape.hpp"
#include "shapestack.hpp"
#include <iostream> // header in standard library

using namespace generalShape;
using namespace rect2D;
using namespace rightTriangle2D;
using namespace circle2D;
using namespace Stack;

// Default Constructor
MyStack::MyStack(/* no args */)
{
    top = -1;
    stacksize = maxsize;
    data = new Shape*[stacksize];
}

// Paramterized Constructor
MyStack::MyStack(int user_size)
{
    top = -1;
    stacksize = user_size;
    data = new Shape*[stacksize];
}

// Push functionality
void MyStack::Push(int user_choice)
{
    if (top >= (stacksize - 1)) {
        throw std::runtime_error("Stack Overflow.");
    }

    else {

        if (user_choice == 1)
        {
            data[++top] = new Rectangle();
            data[top]->read();
        }
        else if (user_choice == 2)
        {
            data[++top] = new Triangle();
            data[top]->read();
        }
        else if(user_choice == 3)
        {
            data[++top] = new Circle();
            data[top]->read();
        }	
        else
        {
            throw std::runtime_error("Wrong choice entered.");
        }
    }
}

// Pop functionality
void MyStack::Pop()
{
    if (top < 0) {
        throw std::runtime_error("Stack Underflow.");
    }
    else {
        std::cout << "Popped a " ;
        data[top]->show();
        std::cout << std::endl;
        top--;
    }
}

// Display all contents of stack
void MyStack::Display(/* no args */)
{
    if(top!=-1){
        int i = top;
        std::cout << std::endl;
        std::cout << "Stack snapshot : Stack top is first"<<std::endl;
        std::cout << std::endl;
        while(i>=0) {
            data[i]->show();
            std::cout << std::endl;
            i--;
        }
        std::cout << std::endl;
    }
    else
        return;
}

// Total area contained by stack objects
void MyStack::area_sum(/* no args */)
{
    double total_area = 0;

    if (top < 0) {
        throw std::runtime_error("Stack Underflow. Total Area = 0. ");
    }

    for (int i = 0; i < top + 1; i++)
    {
        total_area = total_area + data[i]->area();
    }
    std::cout << "Area of all shapes in stack : " << total_area << std::endl;
    std::cout << std::endl;
}

// Destructor
MyStack::~MyStack(/* no args */)
{
    delete [] data;
}