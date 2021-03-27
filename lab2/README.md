## Lab2 语义分析

编译环境：ubuntu 18.04.3
内核版本： 4.9.243
编译过程
```SHELL
flex lex.l    	//生成lex.yy.c
bison -d -v parser.y   	//生成parser.tab.h和parser.y
gcc ast.c analysis.c parser.tab.c lex.yy.c -lfl -o test  	//生成test
./test test.c > output.txt	//test.c为测试代码 输出见output.txt
```

实验完成情况：
+ 符号表设计
+ 语义错误定义
+ 语义错误检查