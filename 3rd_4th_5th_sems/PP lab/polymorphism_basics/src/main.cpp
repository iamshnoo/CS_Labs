//main.cpp
#include <vector>
#include <iostream>
#include <memory>
#include "rectangle.hpp"
#include "triangle.hpp"
#include "circle.hpp"

using namespace generalShape;
using namespace rect2D;
using namespace rightTriangle2D;
using namespace circle2D;
using namespace std;

int main()
{
    int size;
	cout << endl << "How many shapes are there? : ";
	cin >> size;

	double x = 0;

	int choice;

	/* Method 1 */
	//Shape **arr;
	//arr = new Shape*[size];

	/* Method 2 */
    //vector<Shape *> arr;
    /*
	for (int i = 0; i<size; i++)
	{
		cout << endl << "Choose : " << endl;
		cout << "1. Rectangle" << endl;
		cout << "2. Triangle" << endl;
		cout << "3. Circle" << endl;
		cout << "Enter your choice : ";
		cin >> choice;

		if (choice == 1)
		{
			//arr[i] = new Rectangle();
            arr.push_back(new Rectangle);
		}
		else if (choice == 2)
		{
			//arr[i] = new Triangle();
            arr.push_back(new Triangle);
		}
		else
		{
			//arr[i] = new Circle();
            arr.push_back(new Circle);
		}
		
		arr[i]->read();
		x = x + arr[i]->area();
	}

	cout << endl << "Total area : " << x << "." << endl;
*/
	return 0;

}