---
title: "问题 B: 大数a+b"
categories:
  - 算法分析与设计
tags:
  - aoj
  - 算法分析与设计
date: 2022-02-25 21:09:52
---
# 题目描述
小数字的计算很多时候并不能满足现实的需要，现在需要输入两个数字a，b，计算a+b的和。其中0<=a,b<10^100.
# 输入
a b
# 输出
a+b
# 样例输入
```
1 2

100 122

1000000000000000000000 2
```
# 样例输出
```
3

222

1000000000000000000002
```
# 代码范例
```c++
#include<cstdio>
#include<cstring>
#include<iostream>
#include<algorithm>
#define MAX 100
using namespace std;
char str1[MAX], str2[MAX];
int a[MAX], b[MAX], c[MAX];
int main()
{
	int t;
	int kase = 0;
	while (cin >> str1 >> str2)
	{
		memset(a, 0, sizeof(a)); 
		memset(b, 0, sizeof(b));
		memset(c, 0, sizeof(c));
		int len1 = strlen(str1);
		int len2 = strlen(str2);
		for (int i = len1 - 1, j = 0; i >= 0; i--)
		{
			a[j++] = str1[i] - '0';
		}
		for (int i = len2 - 1, j = 0; i >= 0; i--)
		{
			b[j++] = str2[i] - '0';
		}
		for (int i = 0; i < MAX; i++)
		{
			c[i] += a[i] + b[i];
			if (c[i] >= 10)
			{
				c[i] = c[i] % 10;
				c[i + 1]++;
			}
		}
		int j;
		for (j = MAX - 1; c[j] == 0; j--);
		if (j < 0)
			cout << 0;
		else
		{
			for (; j >= 0; j--)
				cout << c[j];
		}
		cout << endl;
	}
	return 0;
}
```
