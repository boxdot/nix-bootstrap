#include <stdio.h>
#include <zlib.h>

int main() {
    printf("Hi, World!\n");
    printf("%s", zlibVersion());
    printf("\n");
    return 0;
}
