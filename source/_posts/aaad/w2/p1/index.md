---
title: "问题 A: 计算1977！"
categories:
  - 算法分析与设计
tags:
  - aoj
  - 算法分析与设计
date: 2022-02-25 21:09:52
---
# 题目描述
编写一个程序，计算1977！的值。
# 提示
1977！的值超过计算机所能表示的整数范围，请考虑其他技巧，假设 1977！之值不超过10000位用一个含有10000个元素的整型数组num表示其结果，每个元素存放一位，num[0]存入个位数，num[]存入十 位数，依次类推……8！=40320，当前最高位len=4，求9！与各位依次相乘rum保存当前的进位数字。（0<=rem<9）.

1)rem置初始值0.

2）i=0:rem=rem+num[0]*9=0+0=0。num[0]=rem%10=0，rem=rem/10=0。

3）i=1:rem=rem+num[1]*9=0+18=18。num[1]=rem%10=8，rem=rem/10=1。

4）i=2:rem=rem+num[2]*9=1+27=28。num[2]=rem%10=8，rem=rem/10=2。

5）i=3:rem=rem+num[3]*9=2+0=2。num[3]=rem%10=2，rem=rem/10=0。

6）i=4:rem=rem+num[4]*9=0+36=36。num[4]=rem%10=6，rem=rem/10=3。

7）rem=3，说明有进位，数组最高位增加1，len=len+1=5，num[5]=rem%10=3，rem=rem/10=0，结束。

num各位结果为：3、6、2、8、8、0。即9！=362880
# 代码范例
```c++
#include <iostream>
using namespace std;
int main()
{
	int num[10000] = { 1 }, i, j;
	int n, len = 1, rem;
	for (i = 2; i <= 1977; i++)//1 already have in array num
	{
		for (j = rem = 0; j < len; j++)
		{
			rem += num[j] * i;
			num[j] = rem % 10;
			rem /= 10;
		}
		while (rem)
		{
			num[j++] = rem % 10;
			rem /= 10;
			len++;
		}
	}
	for (len--; len >= 0; len--)
		cout << num[len];
	return 0;
}
```
