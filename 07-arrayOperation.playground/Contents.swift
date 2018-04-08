//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print("function practice")

let qq = [1,3,4,5,2]

for a in qq {
    if a > 3 {
        continue
    }
    print(a)
}

qq.filter { (numbe) -> Bool in
    return numbe > 9
}
print(qq)


//qq.enumerated().map {
//
//}





// a. 第一个区别
// // 1.map:只会进行直接转换
// 2.flattenMap:会进行降维操作
let a = [[1,2,], [4,5], [4,5]]
var c = a.flatMap{ element in
    return element.map{$0 * 10}
}
print(c)
var i = a.map{ element in
    return element.map{$0 * 10}
}
print(i)


// b.flatten 同时会过滤掉nil值
let d:[Int?] = [1, 3,nil, 4,5];
print(d)
let h = d.flatMap { $0 }
print(h)



///===== MAP
let g = [1,3,3,5]
g.enumerated().map { (inex,num) in
    print(inex,num)
}



var dict = ["1":10,"2":20]
print(dict)

dict.removeValue(forKey: "1")
print(dict)



//=========== dict ====
// 1. addEntry ===== replace all
var  name:NSMutableDictionary = ["1":1,"2":2]
name.addEntries(from: ["1":100])
print(name)


// ===== array
let z = [1,2,3]
let n = [3,4]
var q = z + n;
print(q)






