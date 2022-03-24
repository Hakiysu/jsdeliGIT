---
title: "问题 L: 连续和"
categories:
  - 算法分析与设计
tags:
  - aoj
  - 算法分析与设计
date: 2022-02-26 01:08:53
---
# 题目描述
对一个给定的自然数M，求出所有的连续的自然数段（连续个数大于1），这些连续的自然数段中的全部数之和为M。
例子：1998+1999+2000+2001+2002 = 10000，所以从1998到2002的一个自然数段为M=10000的一个解。
# 输入
包含一个整数的单独一行给出M的值（10 <= M <= 2,000,000）
# 输出
每行两个自然数，给出一个满足条件的连续自然数段中的第一个数和最后一个数，两数之间用一个空格隔开，所有输出行的第一个按从小到大的升序排列，对于给定的输入数据，保证至少有一个解。
# 样例输入
>15
# 样例输出
>1 5
>
>4 6
>
>7 8
# 代码范例
```c++
#include <iostream>
using namespace std;
void continuePlus(int m)
{
	int j,half = m / 2;
	for (int i = 1; i <= half; ++i)
	{
		int sum = 0;
		for ( j = i; j <= m; ++j)
		{
			sum += j;
			if (sum >= m)
				break;
		}
		if (sum == m)
			cout << i << " " << j << endl;
	}
}
int main()
{
	int m;
	cin >> m;
	continuePlus(m);
	return 0;
}
```
