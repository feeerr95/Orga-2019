#include "matrix.h"
#include "matrix_multiply.h"
#include "matrix_destroy.h"
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
	int error = 0;


	while(fgets(buffer, sizeof(buffer), stdin)){

		ok = sscanf(buffer, "%i", &size);
		if(!ok || size <= 0){
			fprintf(stderr, "ERROR EN LECTURA: No se recibio un tamaño correcto de matriz\n");
			exit(1);
		}

		int ammount = 2*size*size;
		double* values = (double*) malloc(ammount*sizeof(double));
		if(!values) {
			fprintf(stderr, "MEMORY ERROR\n");
			exit(1);
		}
		char* string = strtok(buffer, delim);
		for(int i = 0; i < ammount; i++){
			string = strtok(NULL, delim);
			if(!string){
				free(values);
				fprintf(stderr, "%s", "ERROR EN LECTURA: Faltan valores\n");
				exit(1);
			}

			char* error = "";
			value = strtod(string, &error);
			if(strcmp("", error) != 0 && strcmp("\n", error) != 0){
				free(values);
				fprintf(stderr, "%s", "ERROR EN LECTURA: Valor en formato erroneo\n");
				exit(1);
			}

			values[i] = value;
		}


		double* values_A = (double*) malloc(size*size*sizeof(double));
		if(!values_A){
			fprintf(stderr, "%s", "ERROR AL CARGAR VALOR A" );
			free(values);
			exit(1);
		}
		memcpy(values_A, values, size*size*sizeof(double));

		double* values_B = (double*) malloc(size*size*sizeof(double));
		if(!values_B){
			fprintf(stderr, "%s", "ERROR AL CARGAR VALOR B" );
			free(values);
			free(values_A);
			exit(1);
		}
		memcpy(values_B, values+size*size, size*size*sizeof(double));

		matrix_t* matrix_A = create_matrix(size, size);
		if(!matrix_A){
			fprintf(stderr, "%s", "ERROR AL CREAR MATRIZ A" );
			free(values);
			free(values_A);
			free(values_B);
			exit(1);
		}
		matrix_t* matrix_B = create_matrix(size, size);
		if(!matrix_B){
			fprintf(stderr, "%s", "ERROR AL CREAR MATRIZ B" );
			free(values);
			free(values_A);
			free(values_B);
			destroy_matrix(matrix_A);
			exit(1);
		}

		int comp = complete_matrix(values_A, matrix_A);
		if(comp == -1){
			fprintf(stderr, "%s", "ERROR AL COMPLETAR MATRIZ A" );
			free(values);
			free(values_A);
			free(values_B);
			destroy_matrix(matrix_A);
			destroy_matrix(matrix_B);
			exit(1);
		}

		comp = complete_matrix(values_B, matrix_B);
		if(comp == -1){
			fprintf(stderr, "%s", "ERROR AL COMPLETAR MATRIZ B" );
			free(values);
			free(values_A);
			free(values_B);
			destroy_matrix(matrix_A);
			destroy_matrix(matrix_B);
			exit(1);
		}

		matrix_t* matrix_C = matrix_multiply(matrix_A, matrix_B);
		if(!matrix_C) {
			fprintf(stderr, "%s", "ERROR AL REALIZAR MULTIPLICACION" );
			free(values);
			free(values_A);
			free(values_B);
			destroy_matrix(matrix_A);
			destroy_matrix(matrix_B);
			exit(1);
		}

		FILE *file;
		file = fopen("out.txt", "a");
		if(!file){
			fprintf(stderr, "%s", "ERROR AL LEER ARCHIVO SALIDA" );
			error = 1;
			
		}
		else{
			comp = print_matrix(file, matrix_C);
			if(comp == -1) error = 1;
		}

		free(values);
		free(values_A);
		free(values_B);

		destroy_matrix(matrix_A);
		destroy_matrix(matrix_B);
		matrix_destroy(matrix_C);

		fclose(file);
	}
	exit(error);
}
