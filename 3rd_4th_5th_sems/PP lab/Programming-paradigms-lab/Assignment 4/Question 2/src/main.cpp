//main.cpp

#include <iostream>
#include "person.hpp"
#include "student.hpp"
#include "clerk.hpp"
#include "prof.hpp"

using namespace human;
using namespace cleric;
using namespace student;
using namespace proffesor;
using namespace std;

int main() {

    int size;
	std::cout << "Enter total number of people in school : ";
	std::cin >> size;

	int choice;
	int t_choice;

	Person **arr;
	arr = new Person*[size];

	for(int i = 0 ; i < size; i++)
	{
		arr[i] = NULL;
	}
    
	int pos = 0;
	while(pos!=999)
	{
		std::cout << std::endl << "Enter position in school : " << std::endl;
		std::cin >> pos;
		if( (pos > size ) || ( pos < 0) ) throw std::runtime_error("That is not your school. ");

		std::cout << std::endl << "Choose : " << std::endl;
		std::cout << "1. Person "<< std::endl;
		std::cout << "2. Student " << std::endl;
		std::cout << "3. Clerk " << std::endl;
		std::cout << "4. Professor " << std::endl; 
        std::cout << "5. Show details " << std::endl;
        std::cout << "6. Exit " << std::endl;
		std::cout << "Enter your choice : ";
		std::cin >> choice;
		if( ( arr[pos-1] != NULL ) && ( choice != 5 ) && ( choice != 6 ) ) 
            throw std::runtime_error("You already have someone sitting there. ");


		if (choice == 1)
		{	
			arr[pos-1] = new Person() ;
			arr[pos-1]->read();
		}
		else if (choice == 2)
		{
			arr[pos-1] = new Student();
			arr[pos-1]->read();
		}
        else if (choice == 3)
		{
			arr[pos-1] = new Clerk();
			arr[pos-1]->read();
		}
        else if (choice == 4)
		{
			arr[pos-1] = new Prof();
			arr[pos-1]->read();
		}
		else if(choice == 5)
		{
			if(arr[pos-1]==NULL) throw std::runtime_error("You have no one sitting there. ");
			std::cout << std::endl << "Which person do you want to see ? " << std::endl;
			std::cin >> t_choice;
			arr[t_choice-1]->display();
		}
		else if(choice == 6)
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