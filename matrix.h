#ifndef MATRIX_H
#define MATRIX_H

#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>

struct matrix;
typedef struct matrix matrix_t;

// Constructor de matrix_t.
matrix_t* create_matrix(size_t rows, size_t cols);

int index_value(matrix_t* m, int x, int y, double value);

double value_obtain(matrix_t* m, int x, int y);
// Completa la matriz con los valores de un array de doubles.
// El array tiene la misma dimension que cols*rows de la matriz
int complete_matrix(double* values, matrix_t* m);

// Destructor de matrix_t.
int destroy_matrix(matrix_t* m);

// Imprime matrix_t sobre el file pointer fp en el formato solicitado.
// por el enunciado
int print_matrix(FILE* fp, matrix_t* m);

// Multiplica las matrices en m1 y m2.
matrix_t* matrix_multiply(matrix_t* m1, matrix_t* m2);

#endif // MATRIX_H
