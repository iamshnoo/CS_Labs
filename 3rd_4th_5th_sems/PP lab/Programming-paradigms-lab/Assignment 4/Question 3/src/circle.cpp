//circle.cpp

#include "circle.hpp" // header in local directory
#include <iostream> // header in standard library

using namespace generalShape;
using namespace circle2D;

// Read data (use it in main.cpp)
void Circle::read(/* no args */)
{
    std::cout<< std::endl;
    std::cout << "Enter radius : ";
    std::cin >> this->radius;
}

// To calculate area of a rectangle object
double Circle::area(/* no args */)
{
    return (22*radius*radius)/7;
}

Circle::~Circle(/* no args */)
{

}