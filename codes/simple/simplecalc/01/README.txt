PS D:\work\Compilers_work\ModernFlex\codes\simple\simplecalc\01\build> win_bison -d ..\testprj.y
PS D:\work\Compilers_work\ModernFlex\codes\simple\simplecalc\01\build> win_flex ..\testprj.lex

cl -D YY_NO_UNISTD_H .\lex.yy.c .\testprj.tab.c
PS D:\work\Compilers_work\ModernFlex\codes\simple\simplecalc\01\build> .\lex.yy.exe
1+2
3
1 + 2
3
1-2
-1
1*2
invalid character
syntax error