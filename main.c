#include <stdio.h>

void fun();

int main() {
    int array1[5] = {1, 2, 3, 4, 5};
    double *array2;
    int keep;
    int will_unused;
    
    array2 = (double *)array1; // compiler warning


    double d = 3.99;
    int i = d; 
    

    void *ptr;
    int num = 10;
    ptr = &num; 

    int *intPtr = ptr; 
    
    printf("i'nin değeri: %d\n", i);
    printf("array2[0]: %f\n", array2[0]); 
    fun(keep);
    scanf("%d", &keep);
    return 0;
}

void fun() 
{
    printf("benim içime değer almamam lazım");
}