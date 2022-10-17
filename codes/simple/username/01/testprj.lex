%{
%}
 
%%
username printf( "haha\n" );
%%
int yywrap(){ return 1; }
int main()
{
    yylex();
}