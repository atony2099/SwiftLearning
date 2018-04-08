//: Playground - noun: a place where people can play

import UIKit
import Foundation
import Foundation
let now = NSDate()
let timeInterval:TimeInterval = now.timeIntervalSince1970
let timeStamp = Int(timeInterval)
print("当前时间的时间戳：\(timeStamp)")

let dateformatter = DateFormatter()
dateformatter.dateFormat = "yyyyMMddHHmmssSSS"

print("当前日期时间：\(dateformatter.string(from: now as Date))")
print("当前日期时间：\(dateformatter.string(from: now as Date))")
print("当前日期时间：\(dateformatter.string(from: now as Date))")
print("当前日期时间：\(dateformatter.string(from: now as Date))")

for index in [1,2,3,4] {
    print(index);
}


print("当前日期时间：\(dateformatter.string(from: now as Date))")
let daa = Date.init(timeIntervalSinceReferenceDate: 1)



