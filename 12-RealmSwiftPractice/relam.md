###  

使用要点:继承自object

1. model 需要继承自 object 



2. 操作的类:增删该查

增删改查

```swift
        let myDog = Dog()
        myDog.name = "Rex"
        myDog.age = 1
        print("name of dog: \(myDog.name)")
        // Get the default Realm
        let realm = try! Realm()

        
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
```

