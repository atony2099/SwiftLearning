//: Playground - noun: a place where people can play

import UIKit

print("function practice")


/// ==== 1，====== 简单理解， character 是 string 的基本组成单元
let name = "abf😁"
print(name.characters.count)

let array = Array(name.characters)
print(array)



// 2. ===== 切割string
let a  = "ABCDEF"
let c  =  a.substring(from: a.index(a.startIndex, offsetBy: 2) )
print(c)

let h  = "a c d"


h.utf8CString
let array0 = Array(h.characters)
print(array0)
print( "\(array0[1].description)" == " ")

print(String.self)

var default = "aaa"











