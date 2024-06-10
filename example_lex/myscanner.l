%{
    #include "myscanner.h"
%}

%%
:                       return COLON;
"db_type"               return TYPE;
"db_name"               return NAME;
"db_table_prefix"       return TABLE_PREFIX;
"db_port"               return PORT;

[a-zA-Z][_a-zA-Z0-9]*   return IDENTIFIER;
[1-9][0-9]*             return INTEGER;
[ \t\n]                 ;               // Rule to ignore whitespace
.                       { printf("unexpected character: %c\n", yytext[0]); return -1; } // Rule to handle unexpected characters
%%

int yywrap(void)
{
    return 1;
}
