---
title: "问题 D: 分数化小数"
categories:
  - 算法分析与设计
tags:
  - aoj
  - 算法分析与设计
date: 2022-02-25 21:09:52
---
# 题目描述
输入正整数a,b,c 其中1≤a,b<106,c≤100输出a/b的小数形式，精确到小数点后的c位,例如a=1,b=6,c=4输出应该是0.1667
# 输入
多组输入，每行有3个正整数a,b,c
# 输出
输出a/b的小数形式，精确到小数点后的c位,
# 样例输入
```
1 6 4
1 2 20
```
# 样例输出
```
0.1667
0.50000000000000000000
```
# 代码范例
```c++
#include <iostream>
using namespace std;
int main()
{
    int a, b, c;
    int pren, subn;//pre/sub num
    while (cin>>a>>b>>c) {
        pren = a % b;
        cout << a / b << ".";
        for (int i = 1; i <= c; i++)
            if (i == c) 
            {
                pren *= 10;
                subn = pren / b;
                pren = pren % b * 10;
                if (pren / b >= 5)
                {
                    cout << subn + 1 << endl;
                }
                else cout<< subn <<endl;
            }
            else 
            {
                pren *= 10;
                cout<< pren / b;
                pren = pren % b;
            }
    }
	return 0;
}
```