//clerk.cpp

#include "clerk.hpp" // header in local directory
#include <iostream> // header in standard library

using namespace cleric;

// Default constructor
Clerk::Clerk(/* no args */) : Person()
{
    position = "ASDFG";
    salary = 9999;

}

// Parameterized constructor
Clerk::Clerk(std::string t_name,int t_age,std::string t_gender,
                    std::string position_val,int salary_val) : Person(t_name,t_age,t_gender)
{
    position = position_val;
    salary = salary_val;

}

// Copy constructor
Clerk::Clerk(const Clerk& old_clerk) : Person(old_clerk)
{
    position = old_clerk.position;
    salary = old_clerk.salary;

}

// Assignment operator
Clerk& Clerk::operator=(const Clerk& other_clerk)
{
    if ( this != &other_clerk ) {
        //upcast the reference to the object *this of Student class to type (Person&) 
        static_cast<Person&>(*this) = other_clerk; //uses Assignment opeator of Base class.
        position = other_clerk.position;
        salary = other_clerk.salary;
    }
    return *this;

}

// Read data (use it in main.cpp)
void Clerk::read(/* no args */)
{
    std::string t_position;
    int t_salary; 
    Person::read();
    std::cout<< "Workload : ";
    std::cin >> std::ws; // consume any white-space characters
	getline(std::cin, t_position);
    std::cout<< "Salary : ";
    std::cin >>  t_salary;

    position = t_position;
    salary = t_salary;

}

// Display data
void Clerk::display(/* no args */)
{
    Person::display();
    std::cout << "Workload : " << position << std::endl;
    std::cout<< "Salary : " << salary << std::endl;

}

// Destructor
Clerk::~Clerk(/* no args */)
{
    /* no explicit functionality*/
}