Name : Sanskruti Gorle 
PRN : 24070521025
Batch : A1




%{
#include<stdio.h>
int comments = 0;
%}

%%
"//".* { comments++;}
.|\n
%%

int main(){
        printf("Enter a String: ");
        yylex();
        printf("Comments: %d", comments);
        return 0;
}

int yywrap(){
        return 1;
}