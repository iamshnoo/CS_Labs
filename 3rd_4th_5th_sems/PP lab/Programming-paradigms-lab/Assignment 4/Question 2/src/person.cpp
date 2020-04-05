//person.cpp

#include "person.hpp" // header in local directory
#include <iostream> // header in standard library

using namespace human;

// Default constructor
Person::Person(/* no args */)
{
    name = "ABCXYZ";
    age = 20;
    gender = "MALE";

}

// Parameterized constructor
Person::Person(std::string name_val,int age_val,std::string gender_val)
{
    name = name_val;
    age = age_val;
    gender = gender_val;

}

// Assignment operator
Person& Person::operator=(const Person& other_person)
{
    if ( this != &other_person ) {
        name = other_person.name;
        age = other_person.age;
        gender = other_person.gender;
    }
    return *this;

}

// Read data (use it in main.cpp)
void Person::read(/* no args */)
{
    std::string t_name;
    int t_age;
    std::string t_gender;

    std::cout << "Enter the specifications of the person as prompted :" << std::endl;
    std::cout << "Name : ";
    std::cin >> std::ws; // consume any white-space characters
    getline(std::cin, t_name);
    std::cout << "Age : ";
    std::cin >> t_age;
    std::cout << "Gender : ";
    std::cin >> std::ws; // consume any white-space characters
    getline(std::cin, t_gender);

    name = t_name;
    age = t_age;
    gender = t_gender;

}

// Show data (use it in main.cpp)
void Person::display()
{
    std::cout << "The details of the person is :" << std::endl;
    std::cout << "Name : "<< name << std::endl;
    std::cout << "Age : "<< age << std::endl;
    std::cout << "Gender : " << gender << std::endl;
}

// Destructor
Person::~Person(/* no args */)
{
    /* no explicit functionality*/
}