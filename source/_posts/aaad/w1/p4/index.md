---
title: "问题 D: Dynamic Arrays and List - Vector II
"
categories:
  - 算法分析与设计
tags:
  - aoj
  - 算法分析与设计
date: 2022-02-25 22:20:56
---
# 题目描述
Vector II 

For n dynamic arrays Ai (i=0,1,...,n-1), perform a sequence of the following operations: 

`pushBack(t, x)`: Add element x at the end of At. 

`dump(t)`: Print all elements in At. 

`clear(t)`: Clear At. If At is empty, do nothing. 

Ai is a 0-origin array and it is empty in the initial state.
# 输入
The input is given in the following format. 

n 

q 

query1 

query2 

: 

queryq 

Each query queryi is given by 0 t x or 1 t or 2 t where the first digits 0, 1 and 2 represent `pushBack`, `dump` and `clear` operations respectively. 

The total number of elements printed by dump operations do not exceed 500,000

1≤n≤1,000

1≤q≤500,000

−1,000,000,000≤x≤1,000,000,000
# 输出
For each dump operation, print elements of At a line. 

Separete adjacency elements by a space character (do not print the space after the last element). 

Note that, if the array is empty, an empty line should be printed.
# 样例输入
>3 13
>
>0 0 1
>
>0 0 2
>
>0 0 3
>
>0 1 -1
>
>0 2 4
>
>0 2 5
>
>1 0
>
>1 1
>
>1 2
>
>2 1
>
>1 0
>
>1 1
>
>1 2
>
# 样例输出
>1 2 3
>
>-1
>
>4 5
>
>1 2 3
>  
><br>
>
>4 5
# 代码范例
```c++
#include <iostream>
#include <vector>
using namespace std;
void pushBack(vector<int> &t, int x) {
	t.push_back(x);
}
void dump(vector<int> t) {
	if (t.empty() == 0)
	{
		vector<int>::iterator it;
		for (it = t.begin(); it < t.end() - 1; it++)
			cout << *it << " ";
		cout << *it++ << endl;
	}
	else cout << endl;
}
void clear(vector<int> &t) {
	if (t.empty() == 0)
		t.clear();
}
int main()
{
	int n, q;
	cin >> n>>q;
	vector<vector<int>> A(n);
	while (q--)
	{
		int choice;
		cin >> choice;
		if (choice == 0)
		{
			int t,x;
			cin >>t >>x;
			pushBack(A[t],x);
		}
		else if (choice == 1)
		{
			int t;
			cin >> t;
			dump(A[t]);
		}
		else
		{
			int t;
			cin >> t;
			clear(A[t]);
		}
	}
	return 0;
}
```
