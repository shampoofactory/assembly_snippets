#include <stdio.h>

int add(int a, int b);
int sub(int a, int b);
int mul(int a, int b);
int div(int a, int b);

int main(int argc, char **argv)
{
    printf("add(2,6): %d\n", add(2, 6));
    printf("sub(2,6): %d\n", sub(2, 6));
    printf("mul(2,6): %d\n", mul(2, 6));
    printf("div(2,6): %d\n", div(2, 6));
    return 0;
}
