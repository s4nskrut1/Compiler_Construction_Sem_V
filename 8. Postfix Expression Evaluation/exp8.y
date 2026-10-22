Name : Sanskruti Gorle 
PRN : 24070521025
Batch : A1




%{
#include<stdio.h>
#include<stdlib.h>
#include<math.h>
int yylex();
void yyerror(char *s);
%}

%token NUMBER

%%
stmt: expr '\n' {printf("Result: %d\n", $1); }
|
;

expr: NUMBER {$$ = $1;}
| expr expr '+' {$$ = $1 + $2;}
| expr expr '-' {$$ = $1 - $2;}
| expr expr '*' {$$ = $1 * $2;}
| expr expr '/' {$$ = $1 / $2;}
| expr expr '%' {$$ = $1 % $2;}
| expr expr '^' {$$ = (int)pow($1, $2);}
;

%%

void yyerror(char *s){
    printf("Error");
    exit(0);
}

int main() {
    yyparse();
    return 0;
}
