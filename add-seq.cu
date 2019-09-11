#include <stdio.h>
#include <stdlib.h>
#include <math.h>
 
// Normal c++ function. Adds each element pair one at a time.
void vecAdd(double *a, double *b, double *c, int n)
{
    for (int i=0; i<n; i++)
        c[i] = a[i] + b[i];
}
 
int main( int argc, char* argv[] )
{
    // Size of vectors
    int n = 100000;
 
    // input vectors
    double *h_a;
    double *h_b;

    // output vector
    double *h_c;
 
 
    // Size, in bytes, of each vector
    size_t bytes = n*sizeof(double);
 
    // Allocate memory for each vector on the CPU
    h_a = (double*)malloc(bytes);
    h_b = (double*)malloc(bytes);
    h_c = (double*)malloc(bytes);
 
    int i;
    // Initialize vectors on CPU 
    for( i = 0; i < n; i++ ) {
        h_a[i] = sin(i)*sin(i);
        h_b[i] = cos(i)*cos(i);
    }
 
    // Execute addition function
    vecAdd(h_a, h_b, h_c, n);
 
    // Sum up vector c and print result divided by n, this should equal 1 within error
    double sum = 0;
    for(i=0; i<n; i++)
        sum += h_c[i];
    printf("final result: %f\n", sum/n);

 
    // Release CPU (host) memory
    free(h_a);
    free(h_b);
    free(h_c);
 
    return 0;
}