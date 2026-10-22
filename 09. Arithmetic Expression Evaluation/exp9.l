Name : Sanskruti Gorle 
PRN : 24070521025
Batch : A1




%{
#include <stdio.h>
#include <stdlib.h>
#include "y.tab.h"
%}

%%

[0-9]+      { yylval = atoi(yytext); return NUMBER; }
"++"        { return INC; }
"--"        { return DEC; }
"%"         { return MOD; }
[+\-*/^]    { return yytext[0]; }
[ \t]       ;
\n          { return '\n'; }
.           { return yytext[0]; }

%%

int yywrap()
{
    return 1;
}
