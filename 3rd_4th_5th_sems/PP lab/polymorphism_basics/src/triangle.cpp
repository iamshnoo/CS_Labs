//triangle.cpp

#include "triangle.hpp" // header in local directory
#include <iostream> // header in standard library

using namespace rightTriangle2D;

// Read data (use it in main.cpp)
void Triangle::read(/* no args */)
{
    double t_length;
    double t_breadth;
    std::cout<< "Enter the measurement parameters for a triangle as prompted : : ";
    std::cout<< "Length : ";
    std::cin >>  t_length;
    std::cout<< "Breadth : ";
    std::cin >>  t_breadth;

    base = t_length;
    height = t_breadth;
}

// To calculate area of a rectangle object
double Triangle::area(/* no args */)
{
    double t_result;
    t_result = base * height;
    return t_result;
}

