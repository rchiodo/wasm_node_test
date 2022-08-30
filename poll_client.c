#include <stdio.h>
#include <unistd.h>
#include <sys/poll.h>
#include <stdlib.h>
#include <string.h>
#include <memory.h>

#define TIMEOUT 5

int main(int argc, char *argv[])
{
    if (argc < 2)
    {
        fprintf(stderr, "No file name provided\r\n");
        return -1;
    }
    FILE *f = NULL;
    f = fopen(argv[1], "w+");
    if (!f)
    {
        perror("foopen");
        return -1;
    }

    int len = 0;
    char a[100] = {0};
    do
    {
        printf("Enter a string :");
        fscanf(stdin, "%s", a);
        len = strlen(a);
        if (len > 0)
        {
            a[len] = '\n';
            a[len + 1] = 0;
            fwrite(a, 1, len + 2, f);
            fflush(f);
            memset(a, 0, 100);
        }
    } while (len > 0);

    fclose(f);

    return 0;
}