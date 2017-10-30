//: Playground - noun: a place where people can play

import UIKit

// 1.  枚举====
enum SwiftEnum{
   case east
   case west
   case north
}

print(SwiftEnum.east)

// 2 ======. Associated Values
enum StuInfo{
    case first(Int,String)
    case second(Int)
}

// a.可以携带不同的值
var  xiaoming = StuInfo.first(10, "xiaoming")
// b.可以重新赋值
xiaoming = StuInfo.first(100, "xiaodong")

switch xiaoming {
case .first(let number,let name):
    print(number,name)
    break
default:
    break
}


// 3.===== RAW value:每个case创建的时候绑定的值
enum  Name:String{
    case no1 = "tom"
    case no2 = "jim"
}
print(Name.no1.rawValue)


// ===== a.defalut raw value int 从0开始，string equal the name
enum  School:String{
     case top
     case second
}
print(School.top.rawValue)



// ===== 4. advanced useage  ，枚举实际上也是一种高级的数据结构，跟类，结构体一样
// 不能有
enum Api: String {
    case homePage = "baidu.com"
    case perSon = "user.com"
    
    var baseUrl:String {return "www"}
    
    var totalUrl:String {
        return baseUrl  + rawValue
    }
    
    // function  ===
    func printOut(){
        print(rawValue)
    }
}

let api =  Api(rawValue: "baidu.com")
let api2 = Api.perSon
api!.totalUrl
api2.totalUrl

api2.printOut()





























