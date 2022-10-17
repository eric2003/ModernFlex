%%
[\t ]+ /* ignore whitespace */ ;
is |
am |
are |
were |
was |
be |
being |
been |
do |
does |
did |
will |
would |
should |
can |
could |
has |
have |
had |
go { printf("%s: is a verb\n", yytext); }
[a-zA-Z]+ { printf("%s: is not a verb\n", yytext); }
.|\n { ECHO; /* normal default anyway */ }
%%
int yywrap(){ return 1; }
int main()
{
    yylex();
    return 0;
}