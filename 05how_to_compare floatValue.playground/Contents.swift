//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print("function practice")

print(0.15+0.15 == 0.3)




// 问题：为什么不能直接比较浮点型的大小

// 计算机不能准确的表示浮点型的大小 === 按照国际的IEEE754编码标准表示浮点型，会存在精度的丢失
//  浮点型只能表示近似的相等，只要他们差值的绝对值足够小，就认为是相等的


let  maxValue  = 0.3

// 从服务器拿来的
// ....
let serviceData1 = 0.1;
let serviceData2 = 0.2;
let currentData  = serviceData1 + serviceData2
print(currentData)
print(maxValue)
// 表示浮点型 =====
if abs(currentData - maxValue) <= 0.00001  {
    print("hello world")
    print(abs(currentData - maxValue) )
}






