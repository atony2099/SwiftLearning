//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var u = "nihao";
var m = "good";

var array:Array<Int> = [1,2];

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


///// ============where的理解，对泛型类型进一步限制
func checkName<T>(name:T) where T:Equatable {
    print(name)
}

checkName(name: "aa")

class animal<T> where T:Equatable   {
    
}

// 1.通过extension限制类型
class NameClass<T>{
    
}
extension NameClass where T:Equatable{
    func printOut(_ item:T)  {
        print(item)
    }
}
let name = NameClass<String>()
name.printOut("AA")



// 2. 通过extension限制protocol,where通过分号进行分割
protocol  NumberProtocol{
    associatedtype NumberType;
    
}
extension NumberProtocol where NumberType:Equatable ,NumberType == Double{
    func printOutNumber(_ number:NumberType)  {
        print(number)
    }
}
extension NameClass:NumberProtocol {
    typealias NumberType = Double
    
}

let cc = NameClass<String>()
cc.printOutNumber(100)


















// 2. 通过protocol限制类型

















