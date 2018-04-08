//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func randomNum(){

    // 1. 取出一个随机数
    let random = arc4random()
    
    // 2.如果随机数不被7整除，继续取
    if random %  7 != 0 {
        randomNum()
    }
    
    print(random)

}
