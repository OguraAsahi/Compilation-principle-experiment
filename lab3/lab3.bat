flex lex.l
bison -d -v parser.y
gcc ast.c analysis.c parser.tab.c lex.yy.c  blocks.c optimize.c -o e
.\e test.c
pause