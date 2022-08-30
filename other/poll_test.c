#include <stdio.h>
#include <unistd.h>
#include <sys/poll.h>
#include <stdlib.h>
#include <fcntl.h>

#define TIMEOUT 5

int main(int argc, char *argv[])
{
    if (argc < 2)
    {
        fprintf(stderr, "No file name provided\r\n");
        return -1;
    }
    int fd = open(argv[1], O_SYNC | O_RDONLY);
    if (!fd)
    {
        perror("foopen");
        return -1;
    }
    struct pollfd fds[1];
    int ret;

    /* watch stdin for input */
    fds[0].fd = fd;
    fds[0].events = POLLIN | POLLPRI | POLLERR;
    char buf[100] = {0};
    int buff_offset = 0;

    while (1)
    {
        ret = poll(fds, 1, TIMEOUT * 1000);

        if (ret == -1)
        {
            perror("poll");
            return 1;
        }

        if (!ret)
        {
            printf("%d seconds elapsed.\n", TIMEOUT);
        }

        if (fds[0].revents & POLLIN)
        {
            printf("%s is readable\n", argv[1]);
            buff_offset += read(fd, buf + buff_offset, 100);
        }
    }

    return 0;
}