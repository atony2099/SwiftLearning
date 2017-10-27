//
//  ViewController.swift
//  RealmSwiftPractice
//
//  Created by admin on 27/10/2017.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit
import RealmSwift

class Dog: Object {
    @objc dynamic var name = ""
    @objc dynamic var age = 0
}
class Person: Object {
    @objc dynamic var name = ""
    @objc dynamic var picture: Data? = nil // optionals supported
    let dogs = List<Dog>()
}



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myDog = Dog()
        myDog.name = "Rex"
        myDog.age = 1
        print("name of dog: \(myDog.name)")

        
        // Get the default Realm
        let realm = try! Realm()
        
        // Query Realm for all dogs less than 2 years old
        let puppies = realm.objects(Dog.self).filter("age < 2")
        puppies.count // => 0 because no dogs have been added to the Realm yet
        
        // Persist your data easily
        // ======1. 增
        try! realm.write {
            realm.add(myDog)
        }
        
        //2.  deleting objects
//        try!realm.write {
//            realm.delete(myDog)
//        }
//
//        try!realm.write {
//            realm.deleteAll()
//        }
        
        
        // 3. QUERY :
        // 1. LAZY:excute is deferred until the results are used
        // 2.: modifying the results of a query (within a write transaction) will modify the data on disk directly
        //3. =====Auto-updating results
        
        let result   =  realm.objects(Dog.self)
        print(result)
        
        
        // 3. update realam
        try!realm.write {
           myDog.age = 100
        }

        print(result)
        
        
    
        
        
        
        
        
        
        
        
        let d = NSHomeDirectory()
        print(d)

        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

