#include "matrix.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

<<<<<<< HEAD
int main(int argc, const char* argv[])
{
	int size;
	char* string;
	double value;
	int rtn = fscanf(stdin, "%i", &size);
	printf("%d\n", size);
	printf("%i\n", rtn);
	int ammount = 2*size*size;
	double* values = (double*) malloc(ammount*sizeof(double));
	if(!values) {
		fprintf(stderr, "MEMORY ERROR");
		return (1);
	}
	for(int i = 0; i < ammount; i++){
		rtn = fscanf(stdin, "%lg", &value);
		if (!rtn){
			free(values);
			fprintf(stderr, "%s", "ERROR EN LECTURA");
			return(1);
		}
		values[i] = value;
		printf("%g\n", value);
		printf("%i\n", rtn);
	}
	double* values_A = (double*) malloc(size*size*sizeof(double));
	memcpy(values_A, values, size*size*sizeof(double));
	double* values_B = (double*) malloc(size*size*sizeof(double));
	memcpy(values_B, values+size*size, size*size*sizeof(double));
	matrix_t* matrix_A = create_matrix(size, size);
	matrix_t* matrix_B = create_matrix(size, size);
	complete_matrix(values_A, matrix_A);
	complete_matrix(values_B, matrix_B);
	matrix_t* matrix_C = matrix_multiply(matrix_A, matrix_B);
	free(values);
	free(values_A);
	free(values_B);
	FILE *file;
	file = fopen("out.txt", "w");
	print_matrix(file, matrix_C);
	fclose(file);
=======

double string_to_float(char* string){
	double number = atof(string);
	return number;
}


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
>>>>>>> 1c4d06b8fc48acf64c62f28fe53123366b2110a3
	return(0);
}
