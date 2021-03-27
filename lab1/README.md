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