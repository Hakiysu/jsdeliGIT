---
title: "问题 F: Basic Data Structures - Queue
"
categories:
  - 算法分析与设计
tags:
  - aoj
  - 算法分析与设计
date: 2022-02-25 22:25:49
---
# 题目描述
Queue

Queue is a container of elements that are inserted and deleted according to FIFO (First In First Out).

For n queues Qi (i=0,1,...,n−1), perform a sequence of the following operations.

`enqueue(t, x)`: Insert an integer x to Qt. 

`front(t)`: Report the value which should be deleted next from Qt. If Qt is empty, do nothing. 

`dequeue(t)`: Delete an element from Qt. If Qt is empty, do nothing. 

In the initial state, all queues are empty.
# 输入
The input is given in the following format. 

n q 

query1 

query2 

: 

queryq 

Each query is given by `0 t x` or `1 t` or `2 t` where the first digits 0, 1 and 2 represent `enqueue`, `front` and `dequeue` operations respectively.

1≤n≤1,000

1≤q≤200,000

−1,000,000,000≤x≤1,000,000,000
# 输出
For each front operation, print an integer in a line.
# 样例输入
>3 9
>
>0 0 1
>
>0 0 2
>
>0 0 3
>
>0 2 4
>
>0 2 5
>
>1 0
>
>1 2
>
>2 0
>
>1 0
>
# 样例输出
>1
>
>4
>
>2
>
# 代码范例
```c++
#include <iostream>
#include <vector>
#include <queue>
using namespace std;
int main()
{
	ios::sync_with_stdio(false);
	cin.tie(nullptr);
	cout.tie(nullptr);
	int n, q;
	cin >> n>>q;
	vector<queue<int>> A(n);
	while (q--)
	{
		int choice;
		cin >> choice;
		if (choice == 0)
		{
			int t,x;
			cin >>t >>x;
			A[t].push(x);
		}
		else if (choice == 1)
		{
			int t;
			cin >> t;
			if (!A[t].empty())cout << A[t].front() << endl;
		}
		else
		{
			int t;
			cin >> t;
			if (!A[t].empty())A[t].pop();
		}
	}
	return 0;
}
```
