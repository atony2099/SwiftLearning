//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var u = "nihao";
var m = "good";

var array:Array<Int> = [1,2];
var dict:Dictionary<String:String>?


// 1.泛型函数 =====
func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

swapTwoValues(&u, &m)
print(u,m)

func reback<T>(a:T) -> T {
    return a
}

let c =  reback(a: 100)
print(c)



//2.泛型类型 ====
class Stack<T>{
    var items = [T]();
    
    func push(_ item: T) {
        items.append(item)
    }
    
    func pop() -> T {
        return items.removeLast()
    }
}


var stackOfStrings = Stack<String>()
stackOfStrings.push("uno")
stackOfStrings.push("dos")
stackOfStrings.push("tres")
stackOfStrings.push("cuatro")
print(stackOfStrings.items);


// 3. 泛型协议
protocol GenericProtocol {
    associatedtype myType
    var anyProperty: myType { get set }
}


class SomeClass:GenericProtocol{
    typealias myType = Int
    var anyProperty:myType = 1000;
    
}


let a = SomeClass()
print(a.anyProperty)






