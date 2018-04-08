//
//  KeyChainManager.swift
//  IDFATest
//
//  Created by admin on 22/12/2017.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class KeyChainManager {


    class func save(key: String, data: Data) -> OSStatus {
        let query = [
            kSecClass as String       : kSecClassGenericPassword as String,
            kSecAttrAccount as String : key,
            kSecValueData as String   : data,
            kSecAttrServer:
            
            ] as [String : Any],
        
        SecItemDelete(query as CFDictionary)
        
        return SecItemAdd(query as CFDictionary, nil)
    }

    
    
    
}
