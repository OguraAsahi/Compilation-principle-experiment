## Lab1 词法分析

编译环境：ubuntu 18.04.3 LTS 64-bit  编译过程

```
flex lex.l
bison -d -v parser.y
gcc ast.c parser.tab.c lex.yy.c -lfl -o test
./test test.c > result.log ## test.c为测试代码 输出见result.log
```

实验完成情况：

- 二元组
- 抽象语法树
- int float char 以及对应的正则表达式识别
- for break continue 识别
- 多维数组的识别
- +-*/%以及对应的复合赋值运算符识别，自增自减识别
- 单行注释以及多行注释剔除



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

  

## Lab3 中间代码生成

编译环境：Windows10 1909 64位家庭版
编译过程：已写在lab3.bat里，默认输入文件为test.c直接运行lab3.bat即可。
生成文件说明：

+ e.exe 为可执行程序

+ code.txt 为最开始生成的中间代码

+ temp.txt 为优化途中生成的中间代码

+ optimized.txt 为最终优化好的中间代码
  实验完成情况：

+ 数组 for char break continue(支持嵌套)以及复合赋值语句的中间代码生成

+ 基本块的划分

+ 对中间代码进行了简单的优化，包括删除死代码，删除中间变量，以及进行简单的算数优化(如果赋值表达式的2个操作数为立即数，可以直接求值优化成赋值语句；如果是乘法除法语句，并且是2的整数次幂，优化成移位运算)

  

## Lab4 最终代码生成

编译环境：Windows10 1909 64位家庭版
编译过程：已写在lab4.bat里，默认输入文件为GCD.c直接运行lab4.bat即可。

