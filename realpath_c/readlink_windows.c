
#include <windows.h>
#include <stdio.h>

long readlink(const char* pathname, char* link, size_t linksize)
{
    HANDLE h = CreateFileA(pathname, 0, 0, NULL, OPEN_EXISTING, FILE_FLAG_OPEN_REPARSE_POINT, NULL);
    char buffer[MAXIMUM_REPARSE_DATA_BUFFER_SIZE];
    DWORD dwBytesReturned = 0;
    DeviceIoControl(h, FSCTL_GET_REPARSE_POINT, NULL, 0, buffer, sizeof(buffer), &dwBytesReturned, 0);
    typedef struct
    {
        ULONG ReparseTag;
        USHORT ReparseDataLength;
        USHORT Reserved;
        union
        {
            struct
            {
                USHORT SubstituteNameOffset;
                USHORT SubstituteNameLength;
                USHORT PrintNameOffset;
                USHORT PrintNameLength;
                ULONG Flags;
                WCHAR PathBuffer[1];
            } SymbolicLinkReparseBuffer;
            struct
            {
                USHORT SubstituteNameOffset;
                USHORT SubstituteNameLength;
                USHORT PrintNameOffset;
                USHORT PrintNameLength;
                WCHAR PathBuffer[1];
            } MountPointReparseBuffer;
            struct
            {
                UCHAR  DataBuffer[1];
            } GenericReparseBuffer;
        };
    } REPARSE_DATA_BUFFER;
    REPARSE_DATA_BUFFER* pRDB = (REPARSE_DATA_BUFFER*)(buffer);
    if (pRDB->ReparseTag == IO_REPARSE_TAG_SYMLINK)
    {
        int nameLength = pRDB->SymbolicLinkReparseBuffer.SubstituteNameLength / sizeof(wchar_t);
        wchar_t* pName = (wchar_t*)((char*)pRDB->SymbolicLinkReparseBuffer.PathBuffer + pRDB->SymbolicLinkReparseBuffer.SubstituteNameOffset);
        int bytesWritten = WideCharToMultiByte(CP_UTF8, 0, pName, nameLength, link, linksize, NULL, NULL);
        return bytesWritten;
    }
    CloseHandle(h);
    errno = EINVAL;
    return -1;
}