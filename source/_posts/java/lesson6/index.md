---
title: "Java程序设计笔记-class6"
categories:
  - Java程序设计
tags:
  - Java程序设计
date: 2022-03-22 19:01:06
---
# 主函数
- 只用来做测试用，不做功能的实现
- 接受用户的输入
- 通过class实例化对象(new对象，将用户的输入通过参数的方法传递到构造方法中)
- 将用户输入的值赋值给成员变量
- 对象.成员方案——实现具体的算法
# 构造方法
- 一般用来初始化赋值
- 模块化的方式是更加有利于未来的修改和大量数据
- 通过参数的方式，将参数局部变量赋值给成员变量`类名([参数]){}`
# 普通成员方法
- 实现一些算法的功能`返回值类型 方法名([参数]){}`
- 一个成员方法只实现一个功能，例如判断素数，多个功能就实现多个成员方法
# this关键字
- `this.成员变量名`:识别清楚成员变量
- `this.成员方法`:在成员方法里使用，调用当前类里其他的成员方法的(必须是当前同一个类里的成员方法)
- `this()`:调用其他的构造方法(只可以在构造方法里使用，并且在构造方法的第一句)
```java
User(String name,String tel,String card){
  this.name=name;//目标：将局部变量赋值给成员变量
  this.tel=tel;
  this.card=card;
}
void pring(){
  System.out.println(this.name);
}
```
# 实例代码
```java
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.util.Scanner;
public  class  ClassToHome  {
    public  static  void  main(String[]  args)  throws  UnsupportedEncodingException  {
        PrintStream  ps  =new  PrintStream(System.out,true,"UTF-8");
        Scanner  sc  =  new  Scanner(System.in,"UTF-8");
        //接收用户输入数据
        ps.println("学生姓名：");
        String nameIn= sc.next();
        ps.println("上课实验室：");
        String classIn= sc.next();
        ps.println("寝室：");
        String homeIn= sc.next();
        //实例化2个学生对象
        SchoolClass s1  =  new SchoolClass( );//1个为默认npc
        SchoolClass s2  =  new SchoolClass(nameIn,classIn,homeIn);//1个为用户输入信息
        s1.classOver();
        s2.classOver();

    }
}
class SchoolClass{//类名
    String name;//学生姓名
    String classNo;//实验室教室
    String homeNo;//寝室教室
    //构造方法
    SchoolClass (){
        //使用this调用有参数构造方法
        this.name="npc学生";
        this.classNo="npc教室";
        this.homeNo="npc寝室";
    }
    SchoolClass(String name,String classNo,String homeNo){//有参数构造方法
        this.name=name;
        this.classNo=classNo;
        this.homeNo=homeNo;
    }
    //成员方法
    void classOver() throws UnsupportedEncodingException {//下课
        PrintStream ps =new PrintStream(System.out,true,"UTF-8");
        this.leaveClass();//调用离开教室方法
        this.walk("寝室");//调用走路回寝室方法
        this.sleep();//调用回寝室休息方法
    }
    void leaveClass() throws UnsupportedEncodingException {
        PrintStream ps =new PrintStream(System.out,true,"UTF-8");
        ps.println(this.name);
        ps.println("1.关闭电脑2.收拾书包3.放好板凳4.离开实验室"+this.classNo);
    }
    void walk(String destination) throws UnsupportedEncodingException {//学生走路方法，走路去目的地
        PrintStream ps =new PrintStream(System.out,true,"UTF-8");
        ps.println(this.name+"目的地"+destination+this.homeNo+"，走路中...");
        ps.println(this.name+"到达"+destination+this.homeNo);
    }
    void sleep() throws UnsupportedEncodingException {//学生休息
        PrintStream ps =new PrintStream(System.out,true,"UTF-8");
        ps.println("准备休息");
    }
}
```