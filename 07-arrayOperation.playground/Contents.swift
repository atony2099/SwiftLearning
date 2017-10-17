//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print("function practice")


// a. 第一个区别
// // 1.map:只会进行直接转换
// 2.flattenMap:会进行降维操作
let a = [[1,2,], [4,5], [4,5]]
var c = a.flatMap{ element in
    return element.map{$0 * 10}
}
print(c)
var i = a.map{ element in
    return element.map{$0 * 10}
}
print(i)


// b.flatten 同时会过滤掉nil值
let d:[Int?] = [1, 3,nil, 4,5];
print(d)
let h = d.flatMap { $0 }
print(h)






