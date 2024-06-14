%{
#include "subc.h"
int comment_depth=0; // To track the depth of nested comments
%}

%x  COMMENT

%%
"auto"|"break"|"case"|"char"|"continue"|"default"|"do"|"double"|"else"|"extern"|"float"|"for"|"goto"|"if"|"int"|"long"|"register"|"return"|"short"|"sizeof"|"static"|"struct"|"switch"|"typedef"|"union"|"unsigned"|"void"|"while"  return KEYWORD;
[_a-zA-Z][_a-zA-Z0-9]*    return IDENTIFIER;
[0-9]+    return INTEGER;
[-+]?[0-9]*\.?[0-9]+([eE][-+]?[0-9]+)?   return FLOAT;
"/*"         {comment_depth=1;  BEGIN(COMMENT);}
[ \t\n]                 ;               // Rule to ignore whitespace
.                               return OPERATOR; // Catch for operators

<COMMENT>{
    "/*"    comment_depth++;
    "*/"    if(--comment_depth == 0) BEGIN(INITIAL);
    .|\n  ;
    "*"+     ;
}

%%

int yywrap(void)  //Function yywrap is called by lex when input is exhausted. 
{
    return 1;
}
