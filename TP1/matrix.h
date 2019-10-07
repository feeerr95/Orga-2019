#ifndef MATRIX_H
#define MATRIX_H

#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>

struct matrix;
typedef struct matrix matrix_t;

// Constructor de matriz.
matrix_t* create_matrix(size_t rows, size_t cols);

// Guarda un doule en la coordenada (x,y) dada.
int index_value(matrix_t* m, int x, int y, double value);

// Obtiene el valor (double) en la coordenada (x,y).
double value_obtain(matrix_t* m, int x, int y);

// Completa la matriz a partir de un array de doubles.
int complete_matrix(double* values, matrix_t* m);

// Destructor de matriz
int destroy_matrix(matrix_t* m);

// Imprime matriz sobre el file pointer fp.
int print_matrix(FILE* fp, matrix_t* m);

// Multiplica las matrices en m1 y m2.
//matrix_t* matrix_multiply(matrix_t* m1, matrix_t* m2);

#endif // MATRIX_H
