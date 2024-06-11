#include <stdio.h>
#include <strings.h>

#define KEYWORD 1
#define IDENTIFIER 2
#define INTEGER 3
#define FLOAT 4
#define OPERATOR 5

typedef struct{
    int tokenType;
    char *name;
    int count;
} id;

id *enter(int tokenType, char* lexeme, int length);
