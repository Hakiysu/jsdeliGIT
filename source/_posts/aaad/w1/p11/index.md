---
title: "问题 K: Basic Operations - Count
"
categories:
  - 算法分析与设计
tags:
  - aoj
  - 算法分析与设计
date: 2022-02-26 01:06:28
---
# 题目描述
Count For a given sequence of integers A={a0,a1,...,an−1}, perform the following operations.
- `count(b,e,k)`: print the number of the specific values k in ab,ab+1,...,ae−1.
# 输入
The input is given in the following format. 

n 

a0 a1,...,an−1

q 

b1 e1 k1 

b2 e2 k2 

: 

bq eq kq 

The number of elements n and each element ai are given in the first line and the second line respectively. 

In the third line, the number of queries q is given and the following q lines, q integers bi be ki are given as queries.
# 输出
For each query, print the number of specified values.
# 样例输入
>9
>
>1 4 1 4 2 1 3 5 6
>
>3
>
>0 9 1
>
>1 6 1
>
>3 7 5
# 样例输出
>3
>
>2
>
>0
# 代码范例
```c++
#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;
void countKNUM(vector<int> t, int b, int e, int k)
{
	cout << count(t.begin() + b, t.begin() + e, k) << endl;
}
int main()
{
	int n, q;
	cin >> n ;
	vector<int> a(n);
	for (int k = 0; k < n; k++)cin >> a[k];

	cin >> q;
	while (q--)
	{
		int b, e, k;
		cin >> b >> e >> k;
		countKNUM(a, b, e, k);
	}
	return 0;
}
```
