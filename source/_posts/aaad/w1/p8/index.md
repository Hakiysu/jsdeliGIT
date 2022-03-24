---
title: "问题 H: Basic Data Structures - Splice
"
categories:
  - 算法分析与设计
tags:
  - aoj
  - 算法分析与设计
date: 2022-02-25 23:08:34
---
# 题目描述
Splice

For n lists Li (i=0,1,...,n-1), perform a sequence of the following operations. 

`insert(t, x)`: Insert an integer x at the end of Lt. 

`dump(t)`: Print all elements in Lt. 

`splice(s, t)`:　Transfer elements of Ls to the end of Lt. Ls becomes empty. 

In the initial state, Li (i=0,1,...,n-1) are empty.
# 输入
The input is given in the following format. 

n q 

query1 

query2 

: 

queryq 

Each query is given by 0 t x or 1 t or 2 s t where the first digits 0, 1 and 2 represent `insert`, `dump` and `splice` operations respectively. 



For a splice operation, s≠t.

For a splice operation, Ls is not empt.

The total number of elements printed by dump operations do not exceed 1,000,000 

1≤n≤1,000

1≤q≤500,000 

−1,000,000,000≤x≤1,000,000,000
# 输出
For each dump operation, print elements of the corresponding list in a line. Separete adjacency elements by a space character (do not print the space after the last element). Note that, if the list is empty, an empty line should be printed.
# 样例输入
>3 10
>
>0 0 1
>
>0 0 2
>
>0 0 3
>
>0 1 4
>
>0 1 5
>
>2 1 0
>
>0 2 6
>
>1 0
>
>1 1
>
>1 2
# 样例输出
>1 2 3 4 5
>
><br>
>
>6
# 代码范例
```c++
#include <iostream>
#include <vector>
#include <list>
using namespace std;
void insert(list<int>& t,int x)
{
	t.push_back(x);
}
void dump(list<int> t)
{
	if (!t.empty())
	{
		list<int>::iterator it;
		for (it = t.begin(); it != --t.end(); it++)
			cout << *it << " ";

		cout << *it++ << endl;
	}
	else
		cout << endl;
}
void splice(vector<list<int>>&tvec,int s,int t)
{
	tvec[t].splice(tvec[t].end(), tvec[s]);
}
int main()
{
	//program booster
	ios::sync_with_stdio(false);
	cin.tie(nullptr);
	cout.tie(nullptr);
	int n, q;
	cin >> n>>q;
	vector<list<int>> A(n);
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
			dump(A[t]);
		}
		else
		{
			int s,t;
			cin >>s>> t;
			splice(A,s,t);
		}
	}
	return 0;
}
```
