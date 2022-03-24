---
title: "问题 M: Permutation - Sorting Pairs"
categories:
  - 算法分析与设计
tags:
  - aoj
  - 算法分析与设计
date: 2022-02-25 21:09:52
---
# 题目描述
Sorting Pairs Write a program which print coordinates (xi,yi) of given n points on the plane by the following criteria.

 first by x-coordinate in case of a tie, by y-coordinate
# 输入
The input is given in the following format. 

n

x0 y0 

x1 y1

 : 

xn−1 yn−1
In the first line, the number of points n is given. In the following n lines, coordinates of each point are given.
# 输出
Print coordinate of given points in order.
# 样例输入
```
5
4 7
5 5
2 3
6 8
2 1
```
# 样例输出
```
2 1
2 3
4 7
5 5
6 8
```
# 提示
1≤n≤100,000

−1,000,000,000≤xi,yi≤1,000,000,000
# 代码范例
```c++
#include <set>
#include <iostream>
using namespace std;
void sortparis(int n) {
    multiset<pair<int, int>> m;
    while (n--) {
        int i, j;
        cin >> i >> j;
        m.insert(pair<int, int>(i, j));
    }
    for (auto& i : m) {
        cout << i.first << " " << i.second << endl;
    }
}
int main() {
    int n;
    cin >> n;
    sortparis(n);
    return 0;
}
```