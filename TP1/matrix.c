#include "matrix.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

struct matrix{
	size_t rows;
	size_t cols;
	double* array;
};

matrix_t* create_matrix(size_t rows, size_t cols){
	if(rows != cols) return NULL;
	matrix_t* matrix = malloc(sizeof(matrix_t));
	if(!matrix) {
		fprintf(stderr, "MEMORY ERROR");
		return NULL;
	}
	matrix->rows = rows;
	matrix->cols = cols;
	matrix->array = (double*)calloc(cols*rows,sizeof(double));
	if(!matrix->array) {
		free(matrix);
		fprintf(stderr, "MEMORY ERROR");
		return NULL;
	}
	return matrix;
}

int index_value(matrix_t* m, int x, int y, double value){
	if(m->rows == 0 || m->cols == 0) return -1;
	m->array[y*m->rows + x] = value;
	return 0;
}

double value_obtain(matrix_t* m, int x, int y){
	return m->array[y*m->rows + x];
}

int complete_matrix(double* values, matrix_t* m){
	if(!m) {
		fprintf(stderr, "NO MATRIX CREATED ERROR");
		return -1;
	}
	for(int y = 0; y < m->rows; y++){
		for(int x = 0; x < m->cols; x++){
			double value = values[m->rows * y + x];
			index_value(m,x,y, value);
		}
	}
	return 0;
}

int destroy_matrix(matrix_t* m){
	if(!m) {
		fprintf(stderr, "NO MATRIX CREATED ERROR");
		return -1;
	}
	free(m->array);
	free(m);
	return 0;
}

int print_matrix(FILE* fp, matrix_t* m){
	if(!m) {
		fprintf(stderr, "NO MATRIX CREATED ERROR");
		return (-1);
	}
	if(!fp){
		perror("Error al crear el archivo de salida");
		return (-1);
	}
	else{
		fprintf(stdout, "%li ", m->rows );
		fprintf(fp, "%s\n", "Resultado de la multiplicacion:" );
		for(int y = 0; y < m->rows; y++){
			fputc('|', fp);
			fputc(' ', fp);
			for(int x = 0; x < m->cols; x++){
				double value = value_obtain(m, x, y);
				fprintf(stdout, "%lg ", value);
				fprintf(fp, "%lg", value );
				fputc(' ', fp);
			}
		}
		fprintf(stdout, "\n");
		fputc('\n', fp);
	}
	fflush(fp);
	return 0;
}

/*matrix_t* matrix_multiply(matrix_t* m1, matrix_t* m2){
	if(m1->rows != m1->cols || m2->rows != m2->cols || m1->rows != m2->rows) {
		fprintf(stderr, "DIMENSION ERROR");
		return NULL;
		}
	matrix_t* mresult = create_matrix(m1->rows, m1->cols);
	if(!mresult) {
		fprintf(stderr, "NO MATRIX CREATED ERROR");
		return NULL;
	}
	int N = m1->cols;
	for(int i = 0; i < N; i++){
	 	for(int x = 0; x < N; x++){
	 		index_value(mresult,x,i, 0);
	 		for(int y = 0; y < N; y++){
	 			double value = value_obtain(mresult,x,i);
	 			value += value_obtain(m1,y, i) * value_obtain(m2,x,y);
	 			index_value(mresult,x,i,value);
	 		}
	 	}
	}
	return mresult;
}*/
