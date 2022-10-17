%{
/*
 * A lexer for the basic grammar to use for recognizing English sentences.
 */
#include <stdio.h>
%}

%token NOUN PRONOUN VERB ADVERB ADJECTIVE PREPOSITION CONJUNCTION

%%
sentence: subject VERB object{ printf("Sentence is valid.\n"); }
 ;
subject: NOUN
 | PRONOUN
 ;
object: NOUN
 ;
%%

int yywrap(){ return 1; }
int yyerror(char const *s )
{
    return fprintf(stderr, "%s\n", s);
}

int main()
{
    return( yyparse() );
}
