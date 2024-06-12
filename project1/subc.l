%{
#include "subc.h"
%}

%%
"auto"|"break"|"case"|"char"|"continue"|"default"|"do"|"double"|"else"|"extern"|"float"|"for"|"goto"|"if"|"int"|"long"|"register"|"return"|"short"|"sizeof"|"static"|"struct"|"switch"|"typedef"|"union"|"unsigned"|"void"|"while"  return KEYWORD;
[_a-zA-Z][_a-zA-Z0-9]*    return IDENTIFIER;
[0-9]+    return INTEGER;
[-+]?[0-9]*\.?[0-9]+([eE][-+]?[0-9]+)?   return FLOAT;
[ \t\n]                 ;               // Rule to ignore whitespace
.                               return OPERATOR; // Catch for operators

%%

int yywrap(void)  //Function yywrap is called by lex when input is exhausted. 
{
    return 1;
}