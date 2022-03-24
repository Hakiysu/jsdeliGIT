---
title: "Java程序设计笔记-class1"
categories:
  - Java程序设计
tags:
  - Java程序设计
date: 2022-02-25 21:09:52
---
# boolean类型
- 只可赋true或者false给boolean
- 赋值为0或1是非法的
![](https://cdn.jsdelivr.net/gh/Hakiysu/jsdeliGIT@latest/post-assets/java/lesson1/e850352ac65c103880a07b53bc119313b17e8941.png)
# ASCII码对应字�?

>字符:a-z
>
>ASCII:97-122

>字符：A-Z
>
>ASCII:65-90

>字符:0-9
>
>ASCII:48-57

# 数据类型直接的转换：

大类型变成小类型------非法，IDE会报错，除非进行强制转换

小类型变成大类型------可以
```java
float f=12.6789f;
int k=(int)f;
```
- 使用float和double时，数字后要加f
- 强制转换时对于float转int（比如上面那段代码）,对应的int值是直接取整的，不进行四舍五入，此时k=12
- 输出小数点后2位时，使用printf("%.2f",f),会对12.6789的小数进行四舍五入，此时输出的是12.68,而不是12.67
