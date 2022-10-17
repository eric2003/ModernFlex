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

int main()
{
    yylex();
    printf("nline=%d nword=%d nchar=%d\n",lineCount, wordCount, charCount);
    return 0;
}