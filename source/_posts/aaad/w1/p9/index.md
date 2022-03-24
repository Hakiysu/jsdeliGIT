---
title: "问题 I: Basic Operations - Min-Max
"
categories:
  - 算法分析与设计
tags:
  - aoj
  - 算法分析与设计
date: 2022-02-26 01:01:02
---

# 题目描述
For given three integers a,b,c, print the minimum value and the maximum value.
# 输入
The input is given in the following format. a b c Three integers a,b,c are given in a line.
# 输出
Print the minimum and maximum values separated by a space in a line.
# 样例输入
>4 5 3
# 样例输出
>3 5
# 代码范例
```c++
#include <iostream>
#include <algorithm>
using namespace std;
int main()
{
	//program booster
	ios::sync_with_stdio(false);
	cin.tie(nullptr);
	cout.tie(nullptr);
	int a[4];
	cin >> a[0] >> a[1]>>a[2];
	sort(a, a + 3);
	cout << a[0] << " " << a[2];
	return 0;
}
```
