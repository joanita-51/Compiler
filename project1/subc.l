%{
#include "subc.h"
%}

%%
[a-zA-Z][_a-zA-Z0-9]*   return IDENTIFIER;
[1-9][0-9]*             return INTEGER;
[-+]?[0-9]*\.?[0-9]+([eE][-+]?[0-9]+)?   return FLOAT;
[ \t\n]                 ;               // Rule to ignore whitespace
.                               return OPERATOR; // Catch for operators

%%

int yywrap(void)
{
    return 1;
}