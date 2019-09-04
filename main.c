#include "matrix.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main(int argc, const char* argv[])
{
	int size;
	double value;
	int rtn;
	while(fscanf(stdin, "%i", &size) > 0){
		printf("%d\n", size);
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
		FILE *file;
		file = fopen("out.txt", "w");
		print_matrix(file, matrix_C);
		free(values);
		free(values_A);
		free(values_B);
		destroy_matrix(matrix_A);
		destroy_matrix(matrix_B);
		destroy_matrix(matrix_C);
		fclose(file);
	}
	return(0);
}
