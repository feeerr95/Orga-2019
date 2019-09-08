#include "matrix.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

int main(int argc, const char* argv[])
{
	int size;
	double value;
	char buffer[4096];
	char* delim = " ";
	int ok;
	while(fgets(buffer, sizeof(buffer), stdin)){
		ok = sscanf(buffer, "%i", &size);
		if(!ok){
			fprintf(stderr, "ERROR EN LECTURA: No se recibio un tamaño correcto de matriz\n");
			return(1);
		}
		int ammount = 2*size*size;
		double* values = (double*) malloc(ammount*sizeof(double));
		if(!values) {
			fprintf(stderr, "MEMORY ERROR\n");
			return (1);
		}
		char* string = strtok(buffer, delim);
		for(int i = 0; i < ammount; i++){
			string = strtok(NULL, delim);
			if(!string){
				free(values);
				fprintf(stderr, "%s", "ERROR EN LECTURA: Faltan valores\n");
				return(1);
			}
			ok = sscanf(string, "%lg", &value);
			if (!ok){
				free(values);
				fprintf(stderr, "%s", "ERROR EN LECTURA: Valor en formato erroneo\n");
				return(1);
			}
			values[i] = value;
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
		file = fopen("out.txt", "a");
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
