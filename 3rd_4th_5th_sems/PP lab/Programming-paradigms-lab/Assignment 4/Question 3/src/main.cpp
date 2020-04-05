//main.cpp

#include <iostream>
#include "rectangle.hpp"
#include "triangle.hpp"
#include "circle.hpp"
#include "shape.hpp"

using namespace generalShape;
using namespace rect2D;
using namespace rightTriangle2D;
using namespace circle2D;

int main()
{
    int size;
	std::cout << std::endl << "How many shapes are there? : ";
	std::cin >> size;

	double x = 0;

	int choice;

	Shape **arr;
	arr = new Shape*[size];
    
	for (int i = 0; i<size; i++)
	{
		std::cout << std::endl << "Choose : " << std::endl;
		std::cout << "1. Rectangle" << std::endl;
		std::cout << "2. Triangle" << std::endl;
		std::cout << "3. Circle" << std::endl;
		std::cout << "Enter your choice : ";
		std::cin >> choice;

		if (choice == 1)
		{
			arr[i] = new Rectangle() ;
		}
		else if (choice == 2)
		{
			arr[i] = new Triangle();
		}
		else if(choice == 3)
		{
			arr[i] = new Circle();
		}
		
		else
		{
			throw std::runtime_error("Wrong choice entered.");
		}

		arr[i]->read();
		x = x + arr[i]->area();
	}

	std::cout << std::endl << "Total area : " << x << std::endl;
	delete [] arr;
	return 0;

}
