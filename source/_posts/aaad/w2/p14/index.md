---
title: "问题 N: Permutation - Permutation
"
categories:
  - 算法分析与设计
tags:
  - aoj
  - 算法分析与设计
date: 2022-02-25 21:09:52
---
# 题目描述
For given a sequence A={a0,a1,...,an−1}, print the previous permutation and the next permutation in lexicographic order.
# 输入
A sequence is given in the following format.

n 

a0 a1...an−1
# 输出
Print the previous permutation, the given sequence and the next permutation in the 1st, 2nd and 3rd lines respectively. Separate adjacency elements by a space character. Note that if there is no permutation, print nothing in the corresponding line.
# 样例输入
```
3
2 1 3
3
3 2 1
```
# 样例输出
```
1 3 2
2 1 3
2 3 1
3 1 2
3 2 1
```
# 提示
1≤n≤9 ai consist of 1,2,...,n
# 代码范例
```c++
#include <iostream>
#include <algorithm>
#include <vector>
using namespace std;
inline void print(vector<int>& t) {
    for (auto i : t)printf("%d ", i); puts("");
}
void perm(vector<int> a) {
    vector<int> prev(a), next(a);
    prev_permutation(prev.begin(), prev.end());
    next_permutation(next.begin(), next.end());
    if (prev < a)print(prev);
    print(a);
    if (next > a)print(next);
}
int main()
{
    int n;
    while (cin >> n) {
        vector<int> a(n);
        for (int i = 0; i < n; i++)
            cin >> a[i];
        perm(a);
    }
    
    return 0;
}
```