---
title: "问题 A: Dynamic Arrays and List - Vector"
categories:
  - 算法分析与设计
tags:
  - aoj
  - 算法分析与设计
date: 2022-02-25 21:09:52
---
# 题目描述
Vector

For a dynamic array A={a0,a1,...}

A={a0,a1,...} of integers, perform a sequence of the following operations: 

0 `pushBack(x)`: add element x at the end of A 

1 `randomAccess(p)`: print element a[p]

2 `popBack()`: delete the last element of A

A is a 0-origin array and it is empty in the initial state.

# 输入
The input is given in the following format.

q

q1

q2

...

qyi

Each query is given by

0 x

or

1 p 

or

2

where the first digits 0, 1 and 2 represent `pushBack`, `randomAccess` and `popBack` operations respectively.

`randomAccess` and `popBack` operations will not be given for an empty array.

1≤q≤200,000

0≤p< the size of A

−1,000,000,000≤x≤1,000,000,000

# 输出
For each `randomAccess`, print ap in a line.

# 样例输入
>8
>
>0 1
>
>0 2
>
>0 3
>
>2
# 样例输出
>1
>
>2
>
>4
# 代码范例
```c++
#include <iostream>
#include <vector>
using namespace std;

vector<int> A;
//vector<int>::iterator it;
void pushBack(int x) {
	A.push_back(x);
}

void randomAccess(int p) {
	cout << A[p] << endl;
}

void popBack() {
	A.erase(A.end()-1);
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
			int x;
			cin >> x;
			pushBack(x);
		}
		else if (choice == 1)
		{
			int p;
			cin >> p;
			randomAccess(p);
		}
		else
		{
			popBack();
		}
	}
	return 0;
}
```
