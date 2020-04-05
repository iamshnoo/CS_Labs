//main.cpp

#include <iostream>
#include "shapestack.hpp"

using namespace Stack;

int main()
{
    int size;
	std::cout << std::endl << "How many shapes are there? : ";
	std::cin >> size;

	MyStack user_stack(size);
	int choice;

	for (int i = 0; i<size; i++)
	{
		std::cout << std::endl << "Choose : " << std::endl;
		std::cout << "1. Rectangle" << std::endl;
		std::cout << "2. Triangle" << std::endl;
		std::cout << "3. Circle" << std::endl;
		std::cout << "Enter your choice : ";
		std::cin >> choice;

		user_stack.Push(choice);
	}
	user_stack.Display();
	user_stack.area_sum();

	for (int i = 0; i<size; i++)
	{
		user_stack.Pop();
	}
	user_stack.Display();

	return 0;

}