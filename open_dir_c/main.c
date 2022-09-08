#include <sys/types.h>
#include <dirent.h>
#include <stdio.h>
#include <errno.h>
#include <string.h>

int main(int argc, char *argv[])
{
    struct dirent *pDirent;
    DIR *pDir;

    // Ensure correct argument count.

    if (argc != 2)
    {
        printf("Usage: main <dirname>\n");
        return 1;
    }

    // Ensure we can open directory.

    pDir = opendir(argv[1]);
    if (pDir == NULL)
    {
        char error_buf[300] = {0};
        strcpy(error_buf, strerror(errno));
        printf("Cannot open directory '%s' with '%s'\n", argv[1], error_buf);
        return 1;
    }

    // Process each entry.

    while ((pDirent = readdir(pDir)) != NULL)
    {
        printf("[%s]\n", pDirent->d_name);
    }

    // Close directory and exit.

    closedir(pDir);
    return 0;
}