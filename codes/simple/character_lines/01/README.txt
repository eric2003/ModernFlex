ubuntu
 
flex ./testprj.lex 
gcc lex.yy.c 

eric@eric-virtual-machine:~/work/compiler_work/yacc_work/filename$ ./a.out 
AsDaa
A capital letter
s not a capital letter
D capital letter
a not a capital letter
a not a capital letter

Number of Capital letters in the given input - 2

windows11
Developer PowerShell for VS 2022
**********************************************************************
** Visual Studio 2022 Developer PowerShell v17.3.2
** Copyright (c) 2022 Microsoft Corporation
**********************************************************************
PS C:\Users\eric\source\repos>
win_flex ./testprj.lex 

PS D:\work\Compilers_work\bison_flex_work\filename> cl -DYY_NO_UNISTD_H .\lex.yy.c
用于 x86 的 Microsoft (R) C/C++ 优化编译器 19.33.31629 版
版权所有(C) Microsoft Corporation。保留所有权利。

lex.yy.c
D:\work\Compilers_work\bison_flex_work\filename\filename.lex(21) : warning C4716: “yywrap”: 必须返回一个值
Microsoft (R) Incremental Linker Version 14.33.31629.0
Copyright (C) Microsoft Corporation.  All rights reserved.

/out:lex.yy.exe
lex.yy.obj

PS D:\work\Compilers_work\bison_flex_work\filename> .\lex.yy.exe
AbcDe123
A capital letter
b not a capital letter
c not a capital letter
D capital letter
e not a capital letter
1 not a capital letter
2 not a capital letter
3 not a capital letter

Number of Capital letters in the given input - 2
PS D:\work\Compilers_work\bison_flex_work\filename>

