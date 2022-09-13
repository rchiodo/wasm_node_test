#include <limits.h> /* PATH_MAX */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>

#ifndef PATH_MAX
#define PATH_MAX 4096
#endif

int main(int argc, char* argv[]) {
    char buf[PATH_MAX]; /* PATH_MAX incudes the \0 so +1 is not required */
    if (argc <= 1) {
        printf("Usage: main <file path>\n");
        return 0;
    }
    printf("Arg is %s\n", argv[1]);
    return 0;
}