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


// 代替
