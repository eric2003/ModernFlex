PS D:\work\Compilers_work\ModernFlex\codes\simple\start_condition\01\build> win_flex ..\testprj.lex
PS D:\work\Compilers_work\ModernFlex\codes\simple\start_condition\01\build> ls


    目录: D:\work\Compilers_work\ModernFlex\codes\simple\start_condition\01\build


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        2022/10/16     19:57          45436 lex.yy.c

PS D:\work\Compilers_work\ModernFlex\codes\simple\start_condition\01\build> cl -D YY_NO_UNISTD_H  lex.yy.c
用于 x86 的 Microsoft (R) C/C++ 优化编译器 19.33.31630 版
版权所有(C) Microsoft Corporation。保留所有权利。

lex.yy.c
Microsoft (R) Incremental Linker Version 14.33.31630.0
Copyright (C) Microsoft Corporation.  All rights reserved.

/out:lex.yy.exe
lex.yy.obj

PS D:\work\Compilers_work\ModernFlex\codes\simple\start_condition\01\build> .\lex.yy.exe
a magic
a first
b magic
b second
c magic
c third
bmagic
bsecond
b a magic
b a second