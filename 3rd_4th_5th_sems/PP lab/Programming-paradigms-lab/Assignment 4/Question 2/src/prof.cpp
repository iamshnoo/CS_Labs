//prof.cpp

#include "prof.hpp" // header in local directory
#include <iostream> // header in standard library

using namespace proffesor;

// Default constructor
Prof::Prof(/* no args */) : Person()
{
    dep = "ZXCVB";
    courselist = "YUIOP";
    sal = 99999;

}

// Parameterized constructor
Prof::Prof(std::string t_name,int t_age,std::string t_gender,
                    std::string dep_val,std::string courselist_val,int sal_val) : Person(t_name,t_age,t_gender)
{
    dep = dep_val;
    courselist = courselist_val;
    sal = sal_val;

}

// Copy constructor
Prof::Prof(const Prof& old_prof) : Person(old_prof)
{
    dep = old_prof.dep;
    courselist = old_prof.courselist;
    sal = old_prof.sal;

}

// Assignment operator
Prof& Prof::operator=(const Prof& other_prof)
{
    if ( this != &other_prof ) {
        //upcast the reference to the object *this of Student class to type (Person&) 
        static_cast<Person&>(*this) = other_prof; //uses Assignment opeator of Base class.
        dep = other_prof.dep;
        courselist = other_prof.courselist;
        sal = other_prof.sal;
    }
    return *this;

}

// Read data (use it in main.cpp)
void Prof::read(/* no args */)
{
    std::string t_dep;
    std::string t_courselist;
    int t_sal; 
    Person::read();
    std::cout  << "Department : ";
    std::cin >> std::ws; // consume any white-space characters
	getline(std::cin, t_dep);
    std::cout << "Courseload : ";
    std::cin >> std::ws; // consume any white-space characters
	getline(std::cin, t_courselist);
    std::cout<< "Salary : ";
    std::cin >>  t_sal;

    dep = t_dep;
    courselist = t_courselist;
    sal = t_sal;

}

// Display data (use it in main.cpp)
void Prof::display(/* no args */)
{
    Person::display();
    std::cout << "Courseload : " << courselist << std::endl;
    std::cout<< "Salary : " << sal << std::endl;

}

// Destructor
Prof::~Prof(/* no args */)
{
    /* no explicit functionality*/
}