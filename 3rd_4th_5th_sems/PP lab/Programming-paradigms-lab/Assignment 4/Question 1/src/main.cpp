#include <iostream>
#include "vehicle.hpp"
#include "car.hpp"

using namespace transport;
using namespace automobile;

int main() {

	int size;
	std::cout << std::endl << "Enter total number of items in garage : ";
	std::cin >> size;

	int choice;
	int t_choice;

	Vehicle **arr;
	arr = new Vehicle*[size];

	for(int i = 0 ; i < size; i++)
	{
		arr[i] = NULL;
	}
    
	int pos = 0;
	while(pos!=999)
	{
		std::cout << std::endl << "Enter position in garage : " << std::endl;
		std::cin >> pos;
		if( (pos > size ) || ( pos < 0) ) throw std::runtime_error("That is not your garage. ");

		std::cout << std::endl << "Choose : " << std::endl;
		std::cout << "1. New car "<< std::endl;
		std::cout << "2. New vehicle " << std::endl;
		std::cout << "3. Show specs" << std::endl;
		std::cout << "4. Exit" << std::endl;
		std::cout << "Enter your choice : ";
		std::cin >> choice;
		if((arr[pos-1]!=NULL)&&(choice!=3)) throw std::runtime_error("You already have something parked there. ");


		if (choice == 1)
		{	
			arr[pos-1] = new Car() ;
			arr[pos-1]->specs();
		}
		else if (choice == 2)
		{
			arr[pos-1] = new Vehicle();
			arr[pos-1]->specs();
		}
		else if(choice == 3)
		{
			if(arr[pos-1]==NULL) throw std::runtime_error("You have nothing parked there. ");
			std::cout << std::endl << "Which vehicle/car do you want to see ? " << std::endl;
			std::cin >> t_choice;
			arr[t_choice-1]->show_specs();
		}
		else if(choice == 4)
		{
			std::cout << std::endl << "Exiting... " << std::endl;
			pos = 999;
			break;
		}
		
		else
		{
			throw std::runtime_error("Wrong choice entered.");
		}
		
	}

	delete [] arr;

	return 0;

}




	