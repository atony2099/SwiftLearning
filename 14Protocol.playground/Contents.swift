
import UIKit
import Foundation


// ===== property requirements
// 1. 协议中定义属性是什么意思: 实现该协议的类必须定义该属性，并且不能是可选类型的
// 2.
//
//
//
//
protocol FirstPro {
    var name:String {get} // gettabel and settabel
}

struct person:FirstPro {
    var name: String
}

let p = person(name: "123")


class classP:FirstPro {
    var name: String {
        return  "hello" + name
    }
    
}












