---
title: "问题 I: 机器指令"
categories:
  - 算法分析与设计
tags:
  - aoj
  - 算法分析与设计
date: 2022-02-25 21:09:52
---
# 题目描述
“让我看看…下一个语句是$C64410…翻译成二进制代码是110001100100010000010000…分段后是110-00-110-1100100010000010000…第一段的110对应的汇编指令是mov…接下来的00表示的是寄存器ax…第三段的110表示的是间接寻址…然后1100100010000010000是内存地址…Finallyyyyyy…对应的汇编语句是mov([1044],ax)--将内存地址为1044的内存中的数据存入ax.” 

丁丁同学正为下午的Understanding The Machine 作业中一道将十六进制机器码翻译成汇编语言的题忙得焦头烂额。这种对着一个译码表“进行符号转化”的活，向来是丁丁同学最不能容忍的 – 宝贵的时间就在这样的一道”民工题”上一秒一秒地流逝…唉… 

丁丁希望你能编写一个程序来帮帮他。当然，他不会那么残忍地让你去编写一个编译器完成整套工作。他只希望你帮他完成一个小小的模块--将十六进制数转化为二进制数。你可以帮助他么？
# 输入
多组输入，样例数最大为100。 
每组输入是一个由"0123456789ABCDEF"十六种字符组成的一个序列。序列的长度N的满足: 0 <= N <= 10,000。每个序列以换行符结束。
# 输出
这个序列对应的二进制数。输出每个序列后换行。 
# 样例输入
```
C6
88D7
```
# 样例输出
```
11000110
1000100011010111
```
# 代码范例
```c++
#include <iostream>
#include <cstring>
using namespace std;
int main() {
	char t[100];
	while (cin >> t) {
		for (int m = 0; m < strlen(t); m++) {
			switch (t[m])
			{
			case '0':cout << "0000";
				break;
			case '1':cout << "0001";
				break;
			case '2':cout << "0010";
				break;
			case '3':cout << "0011";
				break;
			case '4':cout << "0100";
				break;
			case '5':cout << "0101";
				break;
			case '6':cout << "0110";
				break;
			case '7':cout << "0111";
				break;
			case '8':cout << "1000";
				break;
			case '9':cout << "1001";
				break;
			case 'A':cout << "1010";
				break;
			case 'B':cout << "1011";
				break;
			case 'C':cout << "1100";
				break;
			case 'D':cout << "1101";
				break;
			case 'E':cout << "1110";
				break;
			case 'F':cout << "1111";
				break;
			}
		}
		cout << endl;
	}
	return 0;
}
```