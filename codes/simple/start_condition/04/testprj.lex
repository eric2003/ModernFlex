%{
int line_num = 0;
%}

%option noyywrap

%x comment

%%
"/*"         BEGIN(comment);
<comment>[^*\n]*        /* eat anything that's not a '*' */
<comment>"*"+[^*/\n]*   /* eat up '*'s not followed by '/'s */
<comment>\n             {++line_num;
                         printf( "line_num = %d\n",line_num );
                        }
<comment>"*"+"/"        BEGIN(INITIAL);
%%
   
int main()
{
    yylex();
    return 0;
}