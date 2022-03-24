---
title: "问题 B: Dynamic Arrays and List - Deque"
categories:
  - 算法分析与设计
tags:
  - aoj
  - 算法分析与设计
date: 2022-02-25 21:53:22
---

![](https://cdn.jsdelivr.net/gh/Hakiysu/jsdeliGIT@latest/post-assets/https://cdn.jsdelivr.net/gh/Hakiysu/jsdeliGIT@latest/post-assets/https://cdn.jsdelivr.net/gh/Hakiysu/jsdeliGIT@latest/post-assets/84049481_p0.jpg)

# 题目描述
Deque 

For a dynamic array A={a0,a1,...} of integers, perform a sequence of the following operations: 

0 `push(d, x)`: Add element x at the begining of A, if d=0. Add element x at the end of A, if d=1. 

1 `randomAccess(p)`: Print element ap. 

2 `pop(d)`: Delete the first element of A, if d=0. Delete the last element of A, if d=1. 

A is a 0-origin array and it is empty in the initial state.
# 输入
The input is given in the following format.

q

query1

query2

:

queryq

Each query queryi is given by 0 d x , or 1 p, or 2 d ,where the first digits 0, 1 and 2 represent `push`, `randomAccess` and `pop` operations respectively. 

randomAccess and pop operations will not be given for an empty array. 

1≤q≤400,000 

0≤p< the size of A 

−1,000,000,000≤x≤1,000,000,000
# 输出
For each randomAccess, print ap in a line.

# 样例输入
>11
>
>0 0 1
>
>0 0 2
>
>0 1 3
>
>1 0
>
>1 1
>
>1 2
>
>2 0
>
>2 1
>
>0 0 4
>
>1 0
>
>1 1
>
# 样例输出
>2
>
>1
>
>3
>
>4
>
>1
# 代码范例
```c++
#include <iostream>
#include <deque>
using namespace std;
deque<int> A;
void push(int d,int x) {
	if (d == 0)
		A.insert(A.begin(), x);
	else
		A.push_back(x);
}

void randomAccess(int p) {
	cout << A[p] << endl;
}

void pop(int d) {
	if (d == 0)
		A.erase(A.begin());
	else
		A.erase(A.end() - 1);
}
int main()
{
	int t;
	cin >> t;
	while (t--)
	{
		int choice;
		cin >> choice;
		if (choice == 0)
		{
			int d,x;
			cin >> d>>x;
			push(d,x);
		}
		else if (choice == 1)
		{
			int p;
			cin >> p;
			randomAccess(p);
		}
		else
		{
			int d;
			cin >> d;
			pop(d);
		}
	}
	return 0;
}
```
