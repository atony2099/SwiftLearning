//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



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



