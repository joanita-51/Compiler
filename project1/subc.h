#include <stdio.h>
#include <strings.h>

typedef struct id {
    int tokenType;
    char *name;
    int count;
} id;

id *enter(int tokenType, char* lexeme, int length);
