Name : Sanskruti Gorle 
PRN : 24070521025
Batch : A1




%{
#include<stdio.h>
#include<stdlib.h>
int yylex(void);
int yyerror(char*);
int yyparse(void);
%}

%token NUM

%%
E:E'+'T|E'-'T|T;
T:T'*'F|T'/'F|F;
F:'('E')'|NUM;
%%

int yyerror(char*s){
        printf("Invalid Expression");
        exit(0);
}

int main() {
        printf("Enter an Expression: ");
        yyparse();
        printf("Valid Expression");
        return 0;
}