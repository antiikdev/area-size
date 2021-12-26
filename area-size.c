/**
 * @brief C-program to calculate area size
 * with different units
 * TODO: different units for the area size
 * TODO: functionality for forest industry purposes
 */

#include <stdio.h>


/**
 * @brief Print program instructions
 */
void printInstructions() 
{
	printf("Program prints area size.\n");
}


/**
 * @brief Method asks user input
 * @param l length
 * @param w width
 */
void askInput(double *l, double *w)
{
	printf("Enter length and height (e.g. 1 2) >");
	scanf("%lf %lf",&*l,&*w);
	printf("\n");
}


/**
 * @brief Calculates area size
 * @param l length
 * @param w width
 * @return area size
 */
double calculateArea(double l, double w)
{
	return l * w;
}


/**
 * @brief Prints area size
 * @param r size of the area
 */
void print(double r)
{
	printf("Area size is %1.1lf \n", r);
}


/**
 * @brief short main for testing
 * @return 0
 */
int main(void)
{
	double length, width, result;
	
	printInstructions();
	askInput(&length, &width);
	result = calculateArea(length, width);
	print(result);
	return 0;
}
