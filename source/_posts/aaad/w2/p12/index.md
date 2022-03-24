---
title: "问题 L: Basic Modifications - Unique"
categories:
  - 算法分析与设计
tags:
  - aoj
  - 算法分析与设计
date: 2022-02-25 21:09:52
---
# 题目描述
Unique For a sequence of integers A={a0,a1,...,an−1} which is sorted by ascending order, eliminate all equivalent elements.
# 输入
A sequence is given in the following format.

n 

a0 a1,...,an−1
# 输出
Print the sequence after eliminating equivalent elements in a line. Separate adjacency elements by a space character.
# 样例输入
```
4
1 2 2 4
```
# 样例输出
```
1 2 4
```
# 提示
1≤n≤100,000 

−1000,000,000≤ai≤1,000,000,000 

a0≤a1≤...≤an−1
# 代码范例
```c++
#include <set>
#include <iostream>
using namespace std;
int main() {
    int n; cin >> n;
    set<int> s;
    while (n--) {
        int t;
        cin >> t;
        s.insert(t);
    }
    for (int i : s)
    {
        cout << i<<" ";
    }
}
```