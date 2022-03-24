---
title: "问题 E: Basic Data Structures - Stack
"
categories:
  - 算法分析与设计
tags:
  - aoj
  - 算法分析与设计
date: 2022-02-25 22:21:41
---
# 题目描述
Stack

Stack is a container of elements that are inserted and deleted according to LIFO (Last In First Out).

For n stack Si (i=0,1,...,n−1), perform a sequence of the following operations.

`push(t,x)`: Insert an integer x to St. 

`top(t)`: Report the value which should be deleted next from St. If St is empty, do nothing.

`pop(t)`: Delete an element from St. If St is empty, do nothing.

In the initial state, all stacks are empty.
# 输入
The input is given in the following format.

n q

query1

query2

: 

queryq 

Each query queryi is given by `0 t x` or `1 t` or `2 t` where the first digits 0, 1 and 2 represent `push`, `top` and `pop` operations respectively. 

1≤n≤1,000

1≤q≤200,000

−1,000,000,000≤x≤1,000,000,000
# 输出
For each top operation, print an integer in a line.
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
# 样例输出
>3
>
>5
>
>2
>
# 代码范例
```c++
#include <iostream>
#include <vector>
#include <stack>
using namespace std;
void push(stack<int>&t,int x) {
	t.push(x);
}
void top(stack<int> t) {
	if (t.empty() == 0)cout << t.top() << endl;
}
void pop(stack<int>& t) {
	if (t.empty() == 0)t.pop();
}
int main()
{
	int n, q;
	cin >> n>>q;
	vector<stack<int>> A(n);
	while (q--)
	{
		int choice;
		cin >> choice;
		if (choice == 0)
		{
			int t,x;
			cin >>t >>x;
			push(A[t], x);
		}
		else if (choice == 1)
		{
			int t;
			cin >> t;
			top(A[t]);
		}
		else
		{
			int t;
			cin >> t;
			pop(A[t]);
		}
	}
	return 0;
}
```
