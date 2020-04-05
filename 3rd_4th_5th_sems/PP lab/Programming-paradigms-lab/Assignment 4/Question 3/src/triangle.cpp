//triangle.cpp

#include "triangle.hpp" // header in local directory
#include <iostream> // header in standard library

using namespace generalShape;
using namespace rightTriangle2D;

// Read data (use it in main.cpp)
void Triangle::read(/* no args */)
{
    std::cout << std::endl;
    
    std::cout << "Enter length of base : ";
    std::cin >> this->base;
    
    std::cout << "Enter altitude : ";
    std::cin >> this->height;
}

// To calculate area of a rectangle object
double Triangle::area(/* no args */)
{
    return (0.50*base*height);
}

Triangle::~Triangle(/* no args */)
{

}
