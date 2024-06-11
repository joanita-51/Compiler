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
        printf("%d\t", idtoken);
        printf("%s \n", yytext);

        idtoken = yylex();
    } 

}