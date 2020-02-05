#include <stdio.h>
int main()
{
    char charT;
    short shortT;
    int integerT;	
    unsigned int unsignedIntegerT;
    long longT;
    long long longlongT;
    void * voidT;

    // TODO - use sizeof to print size of the above types
    printf("%zu\n",sizeof(charT));
    printf("%zu\n",sizeof(shortT));
    printf("%zu\n",sizeof(integerT));
    printf("%zu\n",sizeof(unsignedIntegerT));
    printf("%zu\n",sizeof(longT));
    printf("%zu\n",sizeof(longlongT));
    printf("%zu\n",sizeof(voidT));

    return 0;
}
