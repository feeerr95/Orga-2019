#include "matrix.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main(int argc, const char* argv[])
{
	char buffer[2048];
	while(fgets(buffer, sizeof(buffer), stdin)){
		
		const char separator[2] = " ";
		char* token;

		//get the first token
		token = strtok(buffer, separator);
		size_t size = (size_t) atoi(token);
		double* values = malloc(2*size*size*sizeof(double));

		int i = 0;
	
		while( token != NULL ) {
			token = strtok(NULL, separator);
			if (token == NULL) break;
			double number = string_to_float(token);
			values[i] = number;
			i++;
			printf(" %f\n", number);
		}

		double* values_A = malloc(size*size*sizeof(double));
		memcpy(values_A, values, size*size);
		double* values_B = malloc(size*size*sizeof(double));
		memcpy(values_B, values+size*size, size*size);
		matrix_t* matrix_A = create_matrix(size, size);
		matrix_t* matrix_B = create_matrix(size, size);
		complete_matrix(values_A, matrix_A);
		complete_matrix(values_B, matrix_B);
		matrix_t* matrix_C = matrix_multiply(matrix_A, matrix_B);
		FILE *file;
		file = fopen("out.txt", "w");
		print_matrix(file, matrix_C);
	}
	return(0);
}
