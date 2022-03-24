---
title: "Java程序设计笔记-class7"
categories:
  - Java程序设计
tags:
  - Java程序设计
date: 2022-03-24 19:01:06
---
# static 关键字
- 可用于修饰import
- `import static java.**.**`,可以将类名省略
```java
import static java.lang.Math.*;
import static java.lang.System.*;
public class test {
    public static void main(String[] args)
    {
        System.out.println(Math.PI);
        System.out.println(Math.abs(-4));
        System.out.println(Math.sqrt(9));
        System.out.println(Math.sin(90));
        System.out.println(Math.sin(Math.PI/2));

    }
}
```
# static代码块
- 可用于初始化
- `static{}`:嵌入到类里面方法之外，是一个单独的方法，不可以嵌入到方法里面
- static代码块在公共类里，代码块的内容会先于main函数执行
- static代码块在普通类里，代码块的内容会先于构造方法执行
- static代码块在任何类里，都只会随类执行一次
```java
public class test {
    public static void main(String[] args)
    {
      System.out.println("c");
      D d1=new D();
      D d2=new D();
    }
    static {
      System.out.println("d");
    }
}
class D{
  static {
    System.out.println("a");
  }
  D(){
    System.out.println("b");
  }
}
```
# static成员变量---静态成员变量
- 记录一些统计信息
- 静态成员变量：所有对象共享同一个静态成员变量
- 静态成员变量的使用：类名.静态成员变量名
- ![](/_posts/java/lesson7/Snipaste_2022-03-24_20-04-21.png)
```java
public class test {
    public static void main(String[] args)
    {
        Web w1=new Web();//使用new Web()模拟登录网站
        Web w2=new Web();
        Web w3=new Web();
        System.out.println(w1.onlineNumber);
        System.out.println(w2.onlineNumber);
        System.out.println(w3.onlineNumber);
        //same as System.out.println(Web.onlineNumber);
    }
}
class Web{
    static int onlineNumber=0;

    Web(){
        this.onlineNumber++;
    }
}
```
# static成员方法---静态成员方法
- 类名.静态成员方法()
- 静态成员方法只可以调用其他的静态成员方法，不可以调用其他的普通方法
- 静态成员方法只可以使用静态成员变量，不可以使用普通成员变量
- 