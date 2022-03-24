---
title: "问题 E: 阶乘之和"
categories:
  - 算法分析与设计
tags:
  - aoj
  - 算法分析与设计
date: 2022-02-25 21:09:52
---
# 题目描述
输入n,计算S=1！+2！+3！+...+n!的末尾6位（不含前导0），1≤n≤106，这里n!=1∗2∗3∗4∗5∗..∗n
# 输入
输入n
# 输出
计算S=1！+2！+3！+...+n!的末尾6位（不含前导0）
# 样例输入
```
10
```
# 样例输出
```
37913
```
# 代码范例
```c++
#include<iostream>
using namespace std;
#define maxH 1000000
int main()
{
    long n, sum = 0, m = 1, k;
    cin >> n;
    if (n >= 26)
        cout << 940313 << endl;
    else
    {
        for (int i = 1; i <= n; i++)
        {
            m *= i;
            m %= maxH;
            sum += m;
        }
        k = sum % maxH;
        cout << k << endl;
    }
    return 0;
}
```