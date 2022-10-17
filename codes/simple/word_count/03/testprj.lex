%{
 unsigned charCount = 0, wordCount = 0, lineCount = 0;
%}

word [^ \t\n]+
eol \n

%%
{word} { wordCount++;
         charCount += yyleng;
         printf("{word}: yytext=%s\n", yytext);
         printf("yyleng=%d\n", yyleng);
         printf("nline=%d nword=%d nchar=%d\n",lineCount, wordCount, charCount);
       }
{eol} { charCount++;
        lineCount++;
        printf("{eol}: yytext=%s\n", yytext);
        printf("yyleng=%d\n", yyleng);
        printf("nline=%d nword=%d nchar=%d\n",lineCount, wordCount, charCount);
      }
.     { charCount++;
        printf("{.}: yytext=%s\n", yytext);
        printf("yyleng=%d\n", yyleng);
        printf("nline=%d nword=%d nchar=%d\n",lineCount, wordCount, charCount);
      }
%%

int yywrap(){ return 1; }

int main( int argc, char ** argv )
{
    if ( argc > 1 ) {
        FILE *file;
        file = fopen(argv[1], "r");
        if ( !file ) {
            fprintf( stderr,"could not open %s\n", argv[1] );
            exit(1);
        }
        yyin = file;
    }
    yylex();
    printf("nline=%d nword=%d nchar=%d\n",lineCount, wordCount, charCount);
    return 0;
}