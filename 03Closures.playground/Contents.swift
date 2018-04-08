//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



// 闭包的 最完整形式 ==== in 是闭包的标志
let closure  = { (name:String?, age:Int) -> Int in
    if name != nil {
        return age
    } else {
        return age + 1
    }
}
let result = closure("lala", 100);



func test01(username:String) -> (String) -> String {
    let blcok =  { (username) -> String in
        return username
    }
    return blcok
}
let block = test01(username: "123")


//func test02(username:String) -> (String) -> String {
//    let blcok =  { (s1:String) -> String in
//        return  ge
//    }
//    return blcok
//}
//func getResult<T>()->T{
//    return "aaa"
//}
//
//let block2 = test02(username: "123")








// omit argument types, the agrument type can be inferred,so the argument
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
let revesName = names.sorted {(s1, s2) -> Bool in
    return s1 < s2;
}
print(revesName)


// omit -- return
// 001 ===== Single-expression closures can implicitly return the result of their single expression by omitting the return keyword from their declarationlet
let cName = names.sorted {(s1, s2) in
     s1 < s2;
}

print(cName)


// omit  arguments
//$0 represent the default arguments
let rName = names.sorted(by: { $0 > $1 } )
print(rName);





//
//=========== trailing closure =========
//
// when:  If a closure expression
// is provided as the function or method’s (only argument） //

// omit : 1, paramater name 2. ()
//
//


//======== 尾随闭包 在函数的末尾，可以省略参数和括号
func tailClosure (tail:(_ name:String) -> String?) {
    let innerName = "fenglin"
    tail(innerName)
    
}



tailClosure { (name) -> String? in
    print(name)
    return "cc"
}



