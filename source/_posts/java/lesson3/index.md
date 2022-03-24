---
title: "Java程序设计笔记-class3"
categories:
  - Java程序设计
tags:
  - Java程序设计
date: 2022-03-08 19:03:12
---
# 大整数型 BigInteger
- 范围比int大
- 使用时需要导入java.math.BigInteger

# 类名称遵循大驼峰原则(UpperCamelClass)
- String
- Scanner
- ...

# 方法(函数)名，参数名，成员变量，局部变量遵循小驼峰原则(lowerCamelClass)
- numItem
- sc.nextDouble
- ...

# 算术运算符：自增和自减
i++:赋值后自增
++i:自增后赋值
i--:赋值后自减
--i:自减后赋值

# 自增自减和与逻辑运算符短路现象
```java
public  class  test{
    public  static  void  main(String[]  args){
        int a=1,b=1;
        if(++a>=2&&b-->2)//a=2,b=1
        //true&&false,则为false,a=2,b=0
          b++;//不执�?a=2,b=1

        if(a--<3||++b<0)//a=2,b=2
        //true||false,则为true,a=1,b=2
          b--;//执行,a=1,b=1
    }
}
```

# 条件运算符
- 布尔表达式 ? 表达式1:表达式2;
- 如果布尔表达式的值为true，则返回表达式1的值，否则返回表达式2的值。

# 分支结构 if/else
参考C++,代码结构上差不多
```java
public  class  test{
    public  static  void  main(String[]  args){
      //多分支语�?
      int x=10;
      if(x>5)
      {
      System.out.print("a");
      }
      if(x>12)
      {
        System.out.print("b");
      }
      else
      {
        System.out.print("b");
      }
      System.out.print("d");
      //output:acd
    }
}

```
# switch&case分支
每个case中如果没有break,则会导致代码先跳到选项case,然后继续向下执行,而不是跳出switch
```java
public  class  test{
    public  static  void  main(String[]  args){
      int i=2;
      switch(i)
      {
        case 1:
          i+=1;
        case 2:
          i+=2;
        case 3:
          i+=3;
        default:
          i-=1;
      }
      //i=2+2+3-1
      //final i=6

      int j=2;
      switch(j)
      {
        case 1:
          j+=1;
          break;
        case 2:
          j+=2;
          break;
        case 3:
          j+=3;
          break;
        default:
          j-=1;
          break;
      }
      //j=2+2
      //final j=4
    }
}
```

# 循环结构(while,do-while,for)
仍可参考C++
```java
public  class  test{
    public  static  void  main(String[]  args){
      int i=1;
      for(;i++<5;)
      ;
      //此时i=6

      int j=1;
      for(;++j<5;)
      ;
      //此时j=5
    }
}
```

# 跳转语句(break,continue)
break可用于switch和循环语句，跳出本语句or语句段，继续执行这个语句or语句块后的语句
