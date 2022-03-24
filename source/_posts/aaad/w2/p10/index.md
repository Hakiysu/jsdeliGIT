---
title: "问题 J: DNA Sorting"
categories:
  - 算法分析与设计
tags:
  - aoj
  - 算法分析与设计
date: 2022-02-25 21:09:52
---
# 题目描述
One measure of "unsortedness" in a sequence is the number of pairs of entries that are out of order with respect to each other. 

For instance, in the letter sequence "DAABEC", this measure is 5, since D is greater than four letters to its right and E is greater than one letter to its right. 

This measure is called the number of inversions in the sequence. The sequence "AACEDGG" has only one inversion (E and D)---it is nearly sorted---while the sequence "ZWQM" has 6 inversions (it is as unsorted as can be---exactly the reverse of sorted).

You are responsible for cataloguing a sequence of DNA strings (sequences containing only the four letters A, C, G, and T). 

However, you want to catalog them, not in alphabetical order, but rather in order of "sortedness", from "most sorted" to "least sorted". All the strings are of the same length.
# 输入
The first line contains two integers: a positive integer n (0 < n <= 50) giving the length of the strings; and a positive integer m (0 < m <= 100) giving the number of strings. These are followed by m lines, each containing a string of length n.
# 输出
Output the list of input strings, arranged from ``most sorted'' to ``least sorted''. Since two strings can be equally sorted, then output them according to the orginal order.
# 样例输入
```
10 6
AACATGAAGG
TTTTGGCCAA
TTTGGCCAAA
GATCAGATTT
CCCGGGGGGA
ATCGATGCAT
```
# 样例输出
```
CCCGGGGGGA
AACATGAAGG
GATCAGATTT
ATCGATGCAT
TTTTGGCCAA
TTTGGCCAAA
```
# 代码范例
```c++
#include<iostream>
#include<algorithm>
using namespace std;
struct node {
    char ch[100];
    int num;
    int k;
}DNA[100];
bool rule_compare(node a, node b) {
    if (a.num == b.num) return a.k < b.k;
    return a.num < b.num;
}
int main() {
    int i, j, k, n, m;
    while (cin >> n >> m) {
        for (i = 0; i < m; i++) {
            cin >> DNA[i].ch;
            DNA[i].num = 0;
            DNA[i].k = i;
            for (j = 0; j < n - 1; ++j) {
                for (k = j + 1; k < n; k++) {
                    if (DNA[i].ch[j] > DNA[i].ch[k])
                        DNA[i].num++;
                }
            }
        }
        sort(DNA, DNA + m, rule_compare);
        for (i = 0; i < m; i++) cout << DNA[i].ch << endl;
    }
    return 0;
}
```