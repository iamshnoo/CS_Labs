//rectangle.cpp

#include "rectangle.hpp" // header in local directory
#include <iostream> // header in standard library

using namespace rect2D;

// Read data (use it in main.cpp)
void Rectangle::read(/* no args */)
{
    double t_length;
    double t_breadth;
    std::cout<< "Enter the measurement parameters for a rectangle as prompted : : ";
    std::cout<< "Length : ";
    std::cin >>  t_length;
    std::cout<< "Breadth : ";
    std::cin >>  t_breadth;

    length = t_length;
    breadth = t_breadth;
}

// To calculate area of a rectangle object
double Rectangle::area(/* no args */)
{
    double t_result;
    t_result = length * breadth;
    return t_result;
}

