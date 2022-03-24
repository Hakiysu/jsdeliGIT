---
title: "问题 C: Dynamic Arrays and List - List"
categories:
  - 算法分析与设计
tags:
  - aoj
  - 算法分析与设计
date: 2022-02-25 22:12:15
---
# 题目描述
List 

For a dynamic list L of integers, perform a sequence of the following operations. 

L has a special element called END at the end of the list and an element of L is indicated by a cursor. 

`insert(x)`: Insert x before the element indicated by the cursor. After this operation, the cursor points the inserted element. 

`move(d)`: Move the cursor to the end by d, if d is positive. Move the cursor to the front by d, if d is negative. 

`erase()`: Delete the element indicated by the cursor. After this operation, the cursor points the element next to the deleted element. 

In case there is no such element, the cursor should point END.

In the initial state, L is empty and the cursor points END.
# 输入
The input is given in the following format.

q 

query1 

query2 

: 

queryq 

Each query is given by `0 x` or `1` d or `2` where the first digits 0, 1 and 2 represent insert, move and erase operations respectively.

The cursor indicates an element of L or END during the operations.

Erase operation will not given when the cursor points END.

Moving distance of the cursor (∑|d|) does not exceed 1,000,000.

L is not empty after performing all operations

1≤q≤500,000

−1,000,000,000≤x≤1,000,000,000
# 输出
Print all elements of the list in order after performing given operations. Print an element in a line.
# 样例输入
>5
>
>0 1
>
>0 2
>
>0 3
>
>1 1
>
>2
# 样例输出
>3
>
>1
>
# 代码范例
```c++
#include <iostream>
#include <list>
using namespace std;
list<int> A;
list<int> ::iterator cursor = A.begin();
void prtL(list<int>& A)
{
	list<int> ::iterator cursor;
	for (cursor = A.begin(); cursor != A.end(); cursor++)
		cout << *cursor << endl;
}
void insert(int x) {
	cursor=A.insert(cursor, x);
}
void move(int d) {
	if (d > 0)
	{
		for(int i=0;i<d;i++)cursor++;
	}
	else
	{
		for (int i = 0; i < -d; i++)cursor--;
	}
}
void erase() {
	cursor=A.erase(cursor);
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
			insert(x);
		}
		else if (choice == 1)
		{
			int d;
			cin >> d;
			move(d);
		}
		else
		{
			erase();
		}
	}
	prtL(A);
	return 0;
}
```
