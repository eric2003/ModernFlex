%{
#include <stdio.h> 
%}

%token INTEGER
%left '+' '-'

%% 
program: 
 program expr '\n' { printf("%d\n", $2); } 
 | 
 ; 
expr: 
 INTEGER { $$ = $1; } 
 | expr '+' expr { $$ = $1 + $3; } 
 | expr '-' expr { $$ = $1 - $3; } 
 ;
%%

int main()
{ 
    yyparse(); 
    return 0; 
}