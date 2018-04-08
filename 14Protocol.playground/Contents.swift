
import UIKit
import Foundation




// protocol ----- property只是定义了 get set 方法，不管你是calculate value or store value ===
protocol FirstPro {
    var name:String {get} // gettabel and settabel
}



struct person:FirstPro {
    var name: String
}

var p = person(name: "123")
p.name = "jim"


class classP:FirstPro {
    var name: String {
        return  "hello"
    }
    
}












