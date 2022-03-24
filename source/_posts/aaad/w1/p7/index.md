---
title: "问题 G: Basic Data Structures - Priority Queue
"
categories:
  - 算法分析与设计
tags:
  - aoj
  - 算法分析与设计
date: 2022-02-25 22:26:36
---
# 题目描述
Priority Queue

Priority queue is a container of elements which the element with the highest priority should be extracted first. 

For n priority queues Qi (i=0,1,...,n-1) of integers, perform a sequence of the following operations. 

`insert(t,x)`: Insert x to Qt. 

`getMax(t)`: Report the maximum value in Qt. If Qt is empty, do nothing. 

`deleteMax(t)`: Delete the maximum element from Qt. If Qt is empty, do nothing. 

In the initial state, all queues are empty.
# 输入
The input is given in the following format. 

n q 

query1 

query2 

: 

queryq 

Each query queryi is given by 0 t x or 1 t or 2 t where the first digits 0, 1 and 2 represent `insert`, `getMax` and `deleteMax` operations respectively.

1≤n≤1,000

1≤q≤200,000

−1,000,000,000≤x≤1,000,000,000
# 输出
For each getMax operation, print an integer in a line.
# 样例输入
>2 10
>
>0 0 3
>
>0 0 9
>
>0 0 1
>
>1 0
>
>2 0
>
>1 0
>
>0 0 4
>
>1 0
>
>0 1 8
>
>1 1
# 样例输出
>9
>
>3
>
>4
>
>8
# 代码范例
```c++
#include <iostream>
#include <vector>
#include <queue>
using namespace std;
void insert(priority_queue<int>& t,int x)
{
	t.push(x);
}
void getMax(priority_queue<int> t)
{
	if (!t.empty())cout << t.top() << endl;
}
void deleteMax(priority_queue<int>&t)
{
	if (!t.empty())t.pop();
}
int main()
{
	//program booster
	ios::sync_with_stdio(false);
	cin.tie(nullptr);
	cout.tie(nullptr);
	int n, q;
	cin >> n>>q;
	vector<priority_queue<int>> A(n);
	while (q--)
	{
		int choice;
		cin >> choice;
		if (choice == 0)
		{
			int t,x;
			cin >>t >>x;
			insert(A[t], x);
		}
		else if (choice == 1)
		{
			int t;
			cin >> t;
			getMax(A[t]);
		}
		else
		{
			int t;
			cin >> t;
			deleteMax(A[t]);
		}
	}
	return 0;
}
```
