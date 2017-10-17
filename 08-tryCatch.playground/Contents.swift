//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
print("function practice")


// 1. How to handle error
// a. optional value： when the operation is fails, return nil
// b. we want to know more  reason ==== throw error
//


// 抛出异常

/*
 
 1. throw 的方式抛出异常，异常的信息 conform to the Error protocol
 enum VendingMachineError: Error {
     case invalidSelection
     case insufficientFunds(coinsNeeded: Int)
     case outOfStock
 }
 通过 throw VendingMachineError.insufficientFunds(coinsNeeded: 5) 抛出
 
 
 2. catch 的方式捕获异常 根据error 分别进行处理
 do {
     try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)
 } catch VendingMachineError.invalidSelection {
     print("Invalid Selection.")
 } catch VendingMachineError.outOfStock {
     print("Out of Stock.")
 } catch VendingMachineError.insufficientFunds(let coinsNeeded) {
     print("Insufficient funds. Please insert an additional \(coinsNeeded) coins.")
 }

 */


enum NumberError: Error {
    case Not4error
    case Not5error
    case Not6error
}


// 1. 抛出异常
func checkNum(_ num:Int)throws -> String {
    switch num {
    case 4:
        throw NumberError.Not4error
    case 5:
        throw NumberError.Not5error
    case 7:
        throw NumberError.Not6error
    default:
        return "\(num)"
    }
}

// 2. 捕获异常
do {
    try checkNum(4)
}catch NumberError.Not4error {
    print("====Not4error")
}catch NumberError.Not5error {
    print("====Not5error")
}catch NumberError.Not6error {
    print("====Not6error")
}


//3. 简单的 try catch方式
let c = try?checkNum(4)
print(c)

// ==
let d:String?
do  {
   d = try checkNum(7)
} catch {
    d = nil
}
print(")3==\(d)")



// 4. try catch 的传递
func wrapCheckNum(_ num:Int)throws ->String {
    return try checkNum(num)
}


do {
    try wrapCheckNum(4)
}  catch NumberError.Not4error{
    print("5)Not4error")
}















enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}


struct Item {
    var price: Int
    var count: Int
}

class VendingMachine {
    var inventory = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 11)
    ]
    var coinsDeposited = 0
    
    func vend(itemNamed name: String) throws {
        guard let item = inventory[name] else {
            throw VendingMachineError.invalidSelection
        }
        
        guard item.count > 0 else {
            throw VendingMachineError.outOfStock
        }
        
        guard item.price <= coinsDeposited else {
            throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
        }
        
        coinsDeposited -= item.price
        
        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem
        
        print("Dispensing \(name)")
    }
}

let favoriteSnacks = [
    "Alice": "Chips",
    "Bob": "Licorice",
    "Eve": "Pretzels",
]
func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) throws {
    let snackName = favoriteSnacks[person] ?? "Candy Bar"
    try vendingMachine.vend(itemNamed: snackName)
}

var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 8


do {
    try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)
} catch VendingMachineError.invalidSelection {
    print("Invalid Selection.")
} catch VendingMachineError.outOfStock {
    print("Out of Stock.")
} catch VendingMachineError.insufficientFunds(let coinsNeeded) {
    print("Insufficient funds. Please insert an additional \(coinsNeeded) coins.")
}
