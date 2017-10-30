
import UIKit
import Foundation

// properties
// 什么是存储属性：get the value directly
// dont store value,  caculate everyTime
//
//
//
//
//
//
//


//1. storeValuee ， swift不可以直接拿到变量的值

//a. var : can change value   ==== b let  can change value
struct FixLength{
    var firstValue:Int
    let constValue:Int
}
var value = FixLength(firstValue: 100, constValue: 200);

value.firstValue = 99;
// value.constValue = 1000;



// c.lazy init: only init once
class DataM {
    lazy var name = [String]();
}
let m = DataM()
m.name.append("fengin")




// 计算属性，=== 不存储值，getfromother property or number ,set other perperty
struct Fenglin {
    var  commonIncome = 100;
    let  shebao = 50;
    
    var salary:Int {
        get {
            return commonIncome + shebao
        }
        
        set {
             commonIncome = newValue - shebao
        }
        
    }
    
}
















