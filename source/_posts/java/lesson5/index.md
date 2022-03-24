---
title: "Java程序设计笔记-class4"
categories:
  - Java程序设计
tags:
  - Java程序设计
date: 2022-03-15 19:02:06
---
# 如何在类中实现为对象赋值?
知识点1：成员变量与局部变量
- 成员变量：类里面方法之外的变量（属性），作用范围是整个类。*只要程序不终止，这些成员的变量就可以一直保持使用。*
- 局部变量：方法里面的变量或者方法的参数，作用范围是整个方法。*一旦方法结束，局部变量就消失。*
知识点2：成员方法和构造方法
- 成员方法(一般实现算法):普通是不能再普通的函数`返回值类型 方法名([参数]){}`
- 构造方法(一般实现赋值):见实例代码段
```java
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.util.Scanner;

public class Register {
    public static void main(String [] args) throws UnsupportedEncodingException {
        Scanner sc= new Scanner(System.in,"utf-8");
       //new一个(实例化一个对象时，Java自动调用了构造方法)
        //如果没有在class在定义任何的构造方法
        //则Java自动帮忙补全一个无参数无内容的构造方法
        //a1(){}
        String name=sc.next();
        String pw=sc.next();
        String tel=sc.next();
        User a1=new User(name,pw,tel);
        a1.registerSuccess();
    }
}
class User{
    //构造方法
    //1.定义规则:类名([参数]){//方法体}
    //2.调用:对象实例化
    String name;
    String password;
    String telNum;
    //函数重载
    User(String name1,String pw1,String tel1)  {
        name=name1;
        password=pw1;
        telNum=tel1;
    }
    void registerSuccess() throws UnsupportedEncodingException {
        PrintStream ps=new PrintStream(System.out,true,"utf-8");
        ps.println(name+" Register Success");
    }

}
```