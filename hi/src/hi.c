#include <stdio.h>
#include <zlib.h>
#include <hi/hi.h>

int main() {
    printf("%s", HI);
    printf("zlib version: %s", zlibVersion());
    printf("\n");
    return 0;
}
