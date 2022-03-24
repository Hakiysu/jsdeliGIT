---
title: "问题 C: 计算N!"
categories:
  - 算法分析与设计
tags:
  - aoj
  - 算法分析与设计
date: 2022-02-25 21:09:52
---
# 题目描述
你的好友小王最近学了一个新的运算法则——阶乘，但他很懒，不想一步一步计算，早知道你是一个程序高手，所以他想让你来帮他编一个程序，能马上得到N的阶乘。
# 输入
输入包含不超过50行数据，每行都有一个整数N(0<=N<=500)。
# 输出
与输入相对应每行输出N的阶乘。 
# 样例输入
```
2
4
```
# 样例输出
```
2
24
```
# 代码范例
```c++
#include<iostream>
using namespace std;
#define MAX 10240
int main()
{
    int N, i, j;
    while (cin >> N)
    {
        int a[MAX] = { 0 };
        a[0] = 1;
        int temp, count = 0;
        for (i = 2; i <= N; i++)
        {
            for (j = 0; j < MAX; j++)
            {
                temp = a[j] * i + count;
                count = temp / 10;
                a[j] = temp % 10;
            }
        }
        for (i = MAX-1; i >= 0; i--)
        {
            if (a[i])
                break;
        }
        for (int j = i; j >= 0; j--)
            cout << a[j];
        cout << endl;
    }
    return 0;
}
```
