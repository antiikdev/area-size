/**
 * @brief C-program to calculate area size with different units
 * @author antiikdev (www.antiik.dev)
 * @version 28 December 2021
 * TODO ideas: different unit conversions for the area size
 * TODO ideas: functionality for forest calculations
 */

#include <stdio.h>


/**
 * @brief Prints program instructions
 */
void printInstructions() 
{
	printf("Program calculates area size. Enter 0 to exit.\n");
}


/**
 * @brief Asks user input
 * @param l length
 * @param w width
 */
void askInput(double *l, double *w)
{
	printf("Enter length in meters >");
	scanf("%lf",&*l);
	if ( *l == 0) return;
	printf("Enter width in meters >");
	scanf("%lf",&*w);
	if ( *w == 0) return;
	printf("\n");
}


/**
 * @brief Asks user input if area size should be converted
 * @return 1 if yes, 0 if no
 */
int askConvertResults()
{
	char answer;
	printf("Do you want to convert the result into km^2? y or n >");
	scanf(" %c", &answer);
	printf("\n");
	if ( answer == 'y' ) return 1;
	return 0;
}


/**
 * @brief Calculates area size in km^2
 * @param r original area size avlue in m^2
 * @return area size value in km^2
 */
double convertResult(double *r)
{
	return *r / 1000000.0;
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
 * @param r size of the area in m^2
 */
void print(double r)
{
	printf("Area size is %1.1lf m^2.\n", r);
}


/**
 * @brief Prints area size
 * @param r size of the area in km^2
 */
void printKm(double r)
{
	printf("Area size is %1.1lf km^2.\n", r);
}


/**
 * @brief short main for testing
 * @return 0
 */
int main(void)
{
	double length=0, width=0, result=0;
	int out;
	
	printInstructions();
	askInput(&length, &width);
	result = calculateArea(length, width);
	print(result);
	
	// If convert to km^2
	if ( result >= 1000000 ) out = askConvertResults();
	if ( out == 1 )
	{
		result = convertResult(&result);
		printKm(result);
	}
	return 0;
}
