---
title: "问题 J: Basic Operations - Min-Max Element
"
categories:
  - 算法分析与设计
tags:
  - aoj
  - 算法分析与设计
date: 2022-02-26 01:03:04
---
# 题目描述
Write a program which manipulates a sequence A={a0,a1,...,an-1} by the following operations: 
- `min(b,e)`: report the minimum element in ab,ab+1,...,ae-1
- `max(b,e)`: report the maximum element in ab,ab+1,...,ae-1
# 输入
The input is given in the following format.

```
n 

a0 a1,...,an-1

q 

com1 b1 e1 

com2 b2 e2 

: 

comq bq eq 
```

In the first line, n (the number of elements in A) is given. 

In the second line, ai (each element in A) are given. 

In the third line, the number of queries q is given and each query is given in the following q lines. 

comi denotes a type of query. 

0 and 1 represents `min(b,e)` and `max(b,e)`respectively.

1≤n≤1,000

−1,000,000,000≤ai≤1,000,000,000

1≤q≤1,000

0≤b
# 输出
For each query, print the minimum element or the maximum element in a line.
# 样例输入
>7
>
>8 3 7 1 9 1 4
>
>3
>
>0 0 3
>
>0 1 5
>
>1 0 7
# 样例输出
>3
>
>1
>
>9
# 代码范例
```c++
#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;
void min(vector<int>vct,int b, int e)
{
	cout << *min_element(vct.begin() + b, vct.begin() + e) << endl;
}
void max(vector<int>vct, int b, int e)
{
	cout << *max_element(vct.begin() + b, vct.begin() + e) << endl;
}
int main()
{
	//program booster
	ios::sync_with_stdio(false);
	cin.tie(nullptr);
	cout.tie(nullptr);
	int n, q;
	cin >> n ;
	vector<int> a(n);
	for (int k = 0; k < n; k++)cin >> a[k];
	cin >> q;
	while (q--)
	{
		int choice;
		cin >> choice;
		if (choice == 0)
		{
			int b, e;
			cin >> b >> e;
			min(a, b, e);
		}
		else
		{
			int b, e;
			cin >> b >> e;
			max(a, b, e);
		}
	}
	return 0;
}
```
