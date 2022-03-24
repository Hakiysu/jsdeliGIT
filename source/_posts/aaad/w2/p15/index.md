---
title: "问题 O: Binary Search - Lower Bound"
categories:
  - 算法分析与设计
tags:
  - aoj
  - 算法分析与设计
date: 2022-02-25 21:09:52
---
# 题目描述
Lower Bound 

For a given sequence A={a0,a1,...,an−1} which is sorted by ascending order, find the lower bound for a specific value k given as a query. 

lower bound: the place pointing to the first element greater than or equal to a specific value, or n if there is no such element.
# 输入
The input is given in the following format.

 n 

a0 a1,...,an−1 

q 

k1 

k2 

: 

kq 

The number of elements n and each element ai are given in the first line and the second line respectively. 

In the third line, the number of queries q is given and the following q lines, q integers ki are given as queries.
# 输出
For each query, print the position i (i=0,1,...,n) of the lower bound in a line.
# 样例输入
```
4
1 2 2 4
3
2
3
5
```
# 样例输出
```
1
3
4
```
# 提示
1≤n≤100,000 

1≤q≤200,000 

0≤a0≤a1≤...≤an−1≤1,000,000,000 

0≤ki≤1,000,000,000
# 代码范例
```c++
#include <iostream>
#include <algorithm>
using namespace std;
int main() {
    int n;
    cin >> n;
    int* arr = new int[n];
    for (int i = 0; i < n; i++) cin >> arr[i];
    int q;
    cin >> q;
    for (int i = 0; i < q; ++i) {
        int p; cin >> p;
        cout << lower_bound(arr, arr + n, p) - arr << endl;
    }
}
```