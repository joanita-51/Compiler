%{
    #define ID 1
    #define INT 2
    #define FLOAT 3
    #define OP 4
    #define KEY 5
%}

%%
[a-zA-Z][_a-zA-Z0-9]*   return ID;
[1-9][0-9]*             return INT;
[-+]?[0-9]*\.?[0-9]+([eE][-+]?[0-9]+)?   return FLOAT;
"auto"|"break"|"case"|"char"|"continue"|"default"|"do"|"double"|"else"|"extern"|"float"|"for"|"goto"|"if"|"int"|"long"|"register"|"return"|"short"|"sizeof"|"static"|"struct"|"switch"|"typedef"|"union"|"unsigned"|"void"|"while"|...   return KEY;
[ \t\n]                 ;               // Rule to ignore whitespace
.                               return OP; // Catch for operators

%%

int yywrap(void)
{
    return 1;
}