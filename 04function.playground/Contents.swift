//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//==== default paramaters ====
// 默认参数=== 当有写参数有默认值的时候， 就定义
// 2. 一般吧默认参数放在后面，因为他们比较不重要

func call(name:String,address:String = "beijing",age:Int = 18){
    print(name,address,age)
}
call(name: "tang")
call(name: "tang", address: "shanghai")
call(name: "tang", age: 20)




// 科里化函数 === 废弃掉--------












