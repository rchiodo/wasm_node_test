#include <limits.h> /* PATH_MAX */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>

int main(int argc, char * argv[]) {
    char buf[PATH_MAX]; /* PATH_MAX incudes the \0 so +1 is not required */
    if (argc <= 1) {
        printf("Usage: main <file path>\n");
        return 0;
    }
    char *res = realpath(argv[1], buf);
    if (res) { // or: if (res != NULL)
        printf("%s is at %s.\n", argv[1], buf);
    } else {
        perror("realpath failure:");
        exit(EXIT_FAILURE);
    }
    return 0;
}