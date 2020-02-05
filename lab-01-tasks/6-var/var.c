#include <stdio.h>

void decToBinary(int n) { 
    int binaryNum[32]; 
  
    int i = 0; 
    while (n > 0) { 
  
        binaryNum[i] = n % 2; 
        n = n / 2; 
        i++; 
    } 
  
    for (int j = i - 1; j >= 0; j--) 
        printf("%d", binaryNum[j]); 

    printf("\n");
} 

int main(void)
{
    short a = 20000;
    short b = 14000;

    short c = a + b;
    unsigned short d = 3 * a + b;
    short e = a << 1;

    // TODO - print variables c, d, e

    decToBinary(a);
    decToBinary(b);
    decToBinary(c);
    decToBinary(d);
    decToBinary(e);




    return 0;
}
