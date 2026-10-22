Name : Sanskruti Gorle 
PRN : 24070521025
Batch : A1




%{
#include <stdio.h>
%}

%%
.*(com)$ { printf("Line ends with com"); }
.* { printf("Line does not end with com"); }
\n ;
%%

int main() {
    printf("Enter test lines ending with 'com' : ");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}