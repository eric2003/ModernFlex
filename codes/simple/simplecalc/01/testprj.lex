%{
#include <stdlib.h> 
int yyerror(const char * s);
#include "testprj.tab.h" 
%}

%option noyywrap

%% 
[0-9]+ { 
 yylval = atoi(yytext); 
 return INTEGER; 
 } 
[-+\n] return *yytext; 
[ \t] ; /* skip whitespace */ 
. yyerror("invalid character"); 
%%

int yyerror(const char * s) { 
    fprintf(stderr, "%s\n", s); 
    return 0; 
} 
