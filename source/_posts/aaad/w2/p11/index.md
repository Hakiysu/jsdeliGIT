---
title: "问题 K: IP判断"
categories:
  - 算法分析与设计
tags:
  - aoj
  - 算法分析与设计
date: 2022-02-25 21:09:52
---
# 题目描述
在基于Internet的程序中，我们常常需要判断一个IP字符串的合法性。
合法的IP是这样的形式：
A.B.C.D
其中A、B、C、D均为位于[0, 255]中的整数。为了简单起见，我们规定这四个整数中不允许有前导零存在，如001这种情况。
现在，请你来完成这个判断程序吧^_^
# 输入
输入由多行组成，每行是一个字符串。
字符串长度最大为30，且不含空格和不可见字符
# 输出
对于每一个输入，单独输出一行
如果该字符串是合法的IP，输出Y，否则，输出N
# 样例输入
```
1.2.3.4
a.b.c.d
267.43.64.12
12.34.56.bb
210.43.64.129
-123.4.5.6
```
# 样例输出
```
Y
N
N
N
Y
N
```
# 代码范例
```c++
#include <iostream>
#include <cstdio>
#include <cstring>
using namespace std;
int number = 0;
int dot = 0;
int convert(char s[])
{
    int len, t = 0;
    len = strlen(s);
    if (len >= 4)
        t = -1;
    else
    {
        for (int i = 0; i < len; i++)
        {
            t = 10 * t + s[i] - '0';
        }
        if (len >= 2 && s[0] == '0')
            t = -1;
    }
    return t;
}
int IsIP(char str[])
{
    number = 0;
    dot = 0;
    char  tmp[10];
    int i = 0, num;
    for (int j = 0; str[j] != '\0'; j++) {
        i = 0;
        if (str[0] == '.')
            return 0;
        while (str[j] != '.' && str[j] != '\0')
        {
            if (str[j] > '9' || str[j] < '0')
                return 0;
            if (str[j] >= '0' && str[j] <= '9')
            {
                tmp[i] = str[j];
                j++;
                i++;
            }
        }
        if (str[j] == '.' && str[j - 1] == '.')
            return 0;
        if (str[j] == '.' && str[j + 1] != '.' && str[j - 1] != '.')
        {
            dot++;
        }
        tmp[i] = '\0';
        num = convert(tmp);
        if (num < 0 || num>255)
            return 0;
        else
            number++;
    }
    if (number == 4 && dot == 3)
        return 1;
    else
        return 0;
}

int main()
{
    char ip[30] = { '\0' };
    while (cin >> ip)
    {
        if (IsIP(ip))
            cout << "Y" << endl;
        else
            cout << "N" << endl;
    }
    return 0;
}
```