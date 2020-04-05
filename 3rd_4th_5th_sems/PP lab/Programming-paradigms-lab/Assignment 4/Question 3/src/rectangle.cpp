//rectangle.cpp

#include "rectangle.hpp" // header in local directory
#include <iostream> // header in standard library

using namespace generalShape;
using namespace rect2D;

// Read data (use it in main.cpp)
void Rectangle::read(/* no args */)
{
    std::cout<< std::endl;
    std::cout << "Enter length : ";
    std::cin >> this->length;

    std::cout << "Enter breadth : ";
    std::cin >> this->breadth;
}

// To calculate area of a rectagle object
double Rectangle::area(/* no args */)
{
    return (length*breadth);
}

Rectangle::~Rectangle(/* no args */)
{

}