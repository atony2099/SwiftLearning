//
//  FLCache.swift
//  多线程开发
//
//  Created by admin on 13/10/2017.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class FLCache: NSObject {
    
    let cache = Dictionary<String, Any>()
    // 并发队列
    let concurrentQueue = DispatchQueue(label: "queuename", attributes: .concurrent)
   
    static let shareInstance = FLCache()

    
    override init() {
        super.init()
    }

}
