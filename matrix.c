#include "matrix.h"
#include <stdlib.h>


struct matrix{
	size_t rows;
	size_t cols;
	double* array;
};


matrix_t* create_matrix(size_t rows, size_t cols){
	if(rows != cols) return NULL;
	matrix_t* matrix = malloc(sizeof(matrix_t));
	if(!matrix) return NULL;
	matrix->rows = rows;
	matrix->cols = cols;
	matrix->array = malloc(sizeof(double) * rows);
	for(int x = 0; x < rows; x++){
        array[x] = calloc(cols, sizeof(double));
    }
	return matrix;
}

void complete_matrix(double* values, matrix_t* m){
	if(!m) return NULL;
	for(int y = 0; y < m->rows; y++){
		for(int x = 0; x < m->cols; x++){
			m->array[y][x] = values[m->rows * y + x];
		}
	}
}


// Destructor de matrix_t

// Revisar esto con valgrind, puede fallar, tal vez haya que iterar por cada array[x][y]
void destroy_matrix(matrix_t* m){
	if(!m) return NULL;
	for(int x = 0; x < m->cols; x++){
		free(m->array[x]);
	}
	free(m);
}


// Imprime matrix_t sobre el file pointer fp en el formato solicitado
// por el enunciado
int print_matrix(FILE* fp, matrix_t* m){
	if(!m) return -1;
	if(!fp){
		perror("Error al crear el archivo de salida");
		return -1;
	}
	else{
		for(int y = 0; y < m->rows; y++){
			fputc('|')
			for(int x = 0; x < m->cols; x++){
				fputc(m->array[y][x], fp);
				fputc(' ', fp);
			}
			fputc('|', fp);
			fputc('\n', fp);
		}
	}
	fflush(fp);
	fclose(fp);
	return 0;
}

// Multiplica las matrices en m1 y m2
matrix_t* matrix_multiply(matrix_t* m1, matrix_t* m2){
	if(m1->rows != m1->cols || m2->rows != m2->cols || m1->rows != m2->rows) return NULL;
	matrix_t* mresult = create_matrix(m1->rows, m1->cols);
	if(!mresult) return NULL;
	int N = m1->cols;
	for(int i = 0; i < N; i++){
	 	for(int x = 0; x < N; x++){
	 		mresult->array[i][x] = 0;
	 		for(int y = 0; y < N; y++){
	 			mresult->array[i][x] += m1->array[i][y] * m2->[x][y]; 
	 		}
	 	}
	}
	return mresult;
}

