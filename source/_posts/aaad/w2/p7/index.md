---
title: "问题 G: 统计字母个数"
categories:
  - 算法分析与设计
tags:
  - aoj
  - 算法分析与设计
date: 2022-02-25 21:09:52
---
# 题目描述
给定一段文章，请输出每个字母出现的次数
# 输入
只有一组输入数据，文件少于1000行。在文章中除最后一个字符外，只有大小写字母、空格和换行符，没有另外的标点、数字。该文章以’#’结尾。
# 输出
输出格式为“C A”，C为’a’..’z’中的字母，A为出现次数，C和A之间空一格
# 样例输入
```
here is the input
this is the article#
```
# 样例输出
```
a 1
b 0
c 1
d 0
e 5
f 0
g 0
h 4
i 5
j 0
k 0
l 1
m 0
n 1
o 0
p 1
q 0
r 2
s 3
t 5
u 1
v 0
w 0
x 0
y 0
z 0
```
# 代码范例
```c++
#include <iostream>
using namespace std;
int main() {
    int arr[26] = { 0 };
    while (true) {
        string t;
        cin >> t;
        for (char& i : t) {
            if (isupper(i)) {
                arr[i - 0x41]++;
            }
            else if (islower(i)) {
                arr[i - 0x61]++;
            }
        }
        if (t.back() == '#')break;
    }
    for (int i = 0; i < 26; ++i) {
        cout << char(i + 0x61) << " " << arr[i] << endl;
    }
}
```