//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print("function practice")
print(0.15+0.15 == 0.3)


// "pattern-match" operator
if 0...10 ~= 10 {
    print("hello wrold")
}

let a = Array.init(repeating: 1, count: 9)

print(a)



func test(name:String = "fenglin"){
    print(name)
}

test()
test(name: "tangtang")






