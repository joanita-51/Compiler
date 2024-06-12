#include <stdio.h>
#include "subc.h"

extern int yylex(); //main entry-point for lex.
extern char* yytext; //pointer to the matched string

int main(){
    int idtoken;

    idtoken = yylex();
    while (idtoken)
    {
        switch (idtoken)
        {
        case KEYWORD:
            printf("KEY\t %s\n", yytext);
            break;
        case IDENTIFIER:
            printf("ID\t %s\n", yytext);
            break;
        case INTEGER:
            printf("INT\t %s\n", yytext);
            break;
        case FLOAT:
            printf("F\t %s\n", yytext);
            break;
        case OPERATOR:
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