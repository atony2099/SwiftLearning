//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print("function practice")


/**
   1.  function  argument:
   argument  label and   argument name
    default argument label == argument name
    
 definition:
 func  call(name:String) {}

 call:    call(name:'tom')

2.specifying argument label

definition:
    func call(first  name:String){}
call:
 call(frist:"tom")
 
 
 3. omitting argumnet label

 definition:
    func call(_ name:String){}
 call : 
call("tom")

 
  4. default Parameter value
 place paraments that dont have defalut values at the beginning of a functions parameter list
 
 */
func call(name:String,address:String = "beijing"){
    print(name,address)
}


call(name: "tang")
call(name: "tang", address: "shanghai")








