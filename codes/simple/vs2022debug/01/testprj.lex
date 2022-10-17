%{
	#include <stdio.h>
	#include <io.h>
%}
  
%%
[A-Z] { printf("%s capital letter\n", yytext); }
.     { printf("%s not a capital letter\n", yytext);}
\n    {return 0;}
%%

int yywrap(){ return 1; }
int main()
{
    yylex();
    return 0;
}
