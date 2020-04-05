//student.cpp

#include "student.hpp" // header in local directory
#include <iostream> // header in standard library

using namespace student;

// Default constructor
Student::Student(/* no args */) : Person()
{
    department = "QWERTY";
    year = 999;

}

// Parameterized constructor
Student::Student(std::string t_name,int t_age,std::string t_gender,
                    std::string department_val,int year_val) : Person(t_name,t_age,t_gender)
{
    department = department_val;
    year = year_val;

}

// Copy constructor
Student::Student(const Student& old_student) : Person(old_student)
{
    department = old_student.department;
    year = old_student.year;

}

// Assignment operator
Student& Student::operator=(const Student& other_student)
{
    if ( this != &other_student ) {
        //upcast the reference to the object *this of Student class to type (Person&) 
        static_cast<Person&>(*this) = other_student; //uses Assignment opeator of Base class.
        department = other_student.department;
        year = other_student.year;
    }
    return *this;

}

// Read data (use it in main.cpp)
void Student::read(/* no args */)
{
    std::string t_department;
    int t_year; 
    Person::read();
    std::cout<< "Department : ";
    std::cin >> std::ws; // consume any white-space characters
	getline(std::cin, t_department);
    std::cout<< "Year : ";
    std::cin >>  t_year;

    department = t_department;
    year = t_year;

}

// Display data (use it in main.cpp)
void Student::display(/* no args */)
{
    Person::display();
    std::cout << "Department : " << department << std::endl;
    std::cout<< "Year : " << year << std::endl;

}

// Destructor
Student::~Student(/* no args */)
{
    /* no explicit functionality*/
}