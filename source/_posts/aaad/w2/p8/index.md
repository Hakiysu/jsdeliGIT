---
title: "问题 H: 大小写互换"
categories:
  - 算法分析与设计
tags:
  - aoj
  - 算法分析与设计
date: 2022-02-25 21:09:52
---
# 题目描述
现在给出了一个只包含大小写字母的字符串，不含空格和换行，要求把其中的大写换成小写，小写换成大写，然后输出互换后的字符串。
# 输入
第一行只有一个整数m（m<=10),表示测试数据组数。 
接下来的m行，每行有一个字符串（长度不超过100）。
# 输出
输出互换后的字符串，每组输出占一行。
# 样例输入
```
2
Acm
ACCEPTED
```
# 样例输出
```
aCM
accepted
```
# 代码范例
```c++
#include <iostream>
#include <cstring>
using namespace std;
int main() {
	int m;
	cin >> m;
	while (m--) {
		char t[100];
		cin >> t;
		for (int m = 0; m < strlen(t); m++) {
			if (t[m] <= 90 && t[m] >= 65)cout << char(t[m] + 32);
			if (t[m] <= 122 && t[m] >= 97)cout << char(t[m] - 32);
		}
		cout << endl;
	}
	return 0;
}
```