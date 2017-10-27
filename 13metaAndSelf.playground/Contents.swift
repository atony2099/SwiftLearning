//: Playground - noun: a place where people can play

import UIKit


/// 1. 什么是元类型
/// 类型的类型。。
/// 怎么理解： 类型是一个对象, String.self : string类型对象，
/// ===== 他所属的类型是: String.type
///
/// 2. .self
///
///

var a = String.self
let b = Bool.self
print(a)
class A {
}

let typeA:A.Type = A.self



///==========
class B {
    class func method() {
        print("Hello")
    }
}

let typeB:B.Type = B.self
typeB.method()

let anyClass:AnyClass = B.self
(anyClass as! B.Type).method()

















