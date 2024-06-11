#include <stdio.h>
#include "subc.h"

extern int yylex();
extern int yylineno;
extern char* yytext;

int main(){
    int idtoken;

    idtoken = yylex();
    while (idtoken)
    {
        switch (idtoken)
        {
        case 1:
            printf("KEY\t %s\n", yytext);
            break;
        case 2:
            printf("ID\t %s\n", yytext);
            break;
        case 3:
            printf("INT\t %s\n", yytext);
            break;
        case 4:
            printf("F\t %s\n", yytext);
            break;
        case 5:
            printf("OP\t %s\n", yytext);
            break;
        default:
            printf("Unspecified token type");
            break;
        }
        idtoken = yylex();
    } 
    return 0;
}