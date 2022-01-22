#include <stdio.h>

typedef struct {
    int one;
    int two;
} TestStruct;

int main(int argc, char** argv)
{
    TestStruct x;
    x.one = 1;
    x.two = 32;
    printf("Hello world!\n%d : %d\n", x.one, x.two);
    return 0;
}
