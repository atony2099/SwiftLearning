//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print("function practice")


// 区分global 和 static value

// 1. Global variables define outside of any function method, closure,or type context

// 2. type property belong to type itself, not to any one instance  of that type




// what singleton should satify
// 1. create once ;
// 2. thread safe
// 3. the initializer of a singleton needs to be private
// https://krakendev.io/blog/the-right-way-to-write-a-singleton


class A {
    static let  shareA:A = {
        let a = A()
        print("-----")
        return a
    }()
    // 3. set it to private
    private init(){
    }
    
}

let a = A.shareA
let b = A.shareA
//let c = A()

let code = 150
print(200..<300)




/*
 
 “The lazy initializer for a global variable (also for static members of structs and enums) is run the first time that global is accessed, and is launched as `dispatch_once` to make sure that the initialization is atomic. This enables a cool way to use `dispatch_once` in your code: just declare a global variable with an initializer and mark it private.”
 
 global or  type propery 会自动懒加载， ，懒加载执行了dispatch_once方法
 
 */
