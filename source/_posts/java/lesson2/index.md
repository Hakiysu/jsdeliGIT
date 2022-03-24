---
title: "Java程序设计笔记-class2"
categories:
  - Java程序设计
tags:
  - Java程序设计
date: 2022-03-03 19:04:01
---
# 类的启动&常量相关知识
```java
public class test {
    public static void main(String[] args) {//这是主函数，必须得有!

    //变量定义
    //数据类型 变量名= 变量值
    int x=10;

    //常量---八进制和十六进制表达形式
    int y =076;//八进制赋值
    int z= 0101;//依然八进制
    char c=(char)z;//强制转换
    System.out.println(c)//会打印字符A(大写A)

    int m = 0x63;//十六进制赋值，以0x开头
    char d=(char)m;//强制转换
    System.out.println(d)//会打印字符c(小写c)

    //主观题--常量
    //final 把变量变成符号常量
    final float pi=3.14f;//声明后只能被使用，不能被修改!
    float area =pi*3*3;
    pi=3.1415926;//ERROR:在上方已经被final过了，不允许修改
    }
}
```
# Java 输出
```java
public class test {
    public static void main(String[] args) {
      //输出
      //System.out.println()---输出变量
      //System.out.printf()
      int x=10;
      System.out.println(x);//打印10
      float f =12.34895349f;
      System.out.printf("%.2f\n",f);//打印f小数点后2位表示形式---唯一的表达形式
      //打印12.35，进行四舍五入

      //输出一个整数的八进制表达形式和十六进制表达形式
      int y=49;//对应八进制61，十六进制31
      System.out.printf("%o\n",y);//八进制表达形式输出数字，不自动向前补全，打印61
      System.out.printf("%#o\n",y);//八进制表达形式,自动向前补全,打印061
      System.out.printf("%x\n",y);//十六进制表达形式,输出数字，不自动向前补全，打印31
      System.out.printf("%#x\n",y);//十六进制表达形式,自动向前补全,打印0x31
    }
}
```

# Java 输入
只要程序中需要输入数据，就一定需要调用Scanner，得在主类之前导入java.util.Scanner这个包
```java
import java.util.Scanner;//导入Scanner需要的包
public class test {
    public static void main(String[] args) {
      //接受输入
      //step1:实例化1个输入的对象
      Scanner sc =new Scanner(System.in);//需要调用java.util.Scanner,在主类前导入

      //step2:接受1个数据
      int n= sc.nextInt();//接受整型数据---等待,直到用户输入数据为止
      System.out.println(n);
      float f= sc.nextFloat();//接受浮点型数据---等待,直到用户输入数据为止
      System.out.println(f);
      String s=sc.next();//接受字符串类型数据---等待,直到用户输入数据为止
      System.out.println(s);
    }
}
```

# 判断输入数据的类�?
```java
import java.util.Scanner;//导入Scanner需要的�?
public class test {
    public static void main(String[] args) {
        //接受输入之前进行判断
        Scanner sc = new Scanner(System.in);
        //判断用户输入的数据是否为小数
        //如果是，则接受此数据
        //如果不是，则提示用户error
        if(sc.hasNextDouble())
        {
            double x=sc.nextDouble();
            System.out.println(x);
        }
        else
        {
            System.out.println("error");
        }

    }
}
```
