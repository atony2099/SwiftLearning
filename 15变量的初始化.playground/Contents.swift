
import UIKit
import Foundation

//  store ----------- properties
// can store value


// contain: var  and let
// var： can change
// let: keep constant
struct Store {
    var name:String
    let age:Int
}
let st = Store(name: "tang", age: 18)
//st.name = "jim" ====== error


// only read - inner
class privateT {
    public private(set) var name:String  //  === only write innner
    init() {
        name = "taang"
    }
}

let p = privateT()
//p.name = "kk"


// lazy delay excute
class lazyT {
    lazy var name = Store(name: "tang", age: 18)
    
}


// compulte value dont store any value , just only compute

// === geter and setter  property ==========
struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}
var square = Rect(origin: Point(x: 0.0, y: 0.0),
                  size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
square.center = Point(x: 15.0, y: 15.0)



// read-only --- just read
struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var  volume: Double {
        return width * height * depth
    }
}





// ===== static 和 class  都可以表====类型作用变量

// static can use in class struct enum
// class only use in class  and compute value , but it can be overwrite
class propert{
   class var firstname = "jim"  //==== cant define store value
    
    static var name:String {
        return "tang"
    }
    
    class var priName:String {
        return "tang"
    }
    
}

class childp:propert {
    
    static var name:String {
        return "tang"
    }

    override class var priName:String {
        return "tang"
    }

    
}












