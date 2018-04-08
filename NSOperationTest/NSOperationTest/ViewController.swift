//
//  ViewController.swift
//  NSOperationTest
//
//  Created by admin on 22/11/2017.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit


/*
 1. opeartion =
 2. queue
 3. custom operation = isCancel
 
 
 并发执行operation的两种方式

 a. addToQueue =======
 b. Custom
 
 */

// sync operation
class CustomOperation: Operation {
    override func main() {
        if isCancelled  {
            return;
        }
        
        for i in 0..<3 {
            if self.isCancelled {return}
            sleep(1)
            print("\(i)")
        }
        print("start",Thread.current)
    }
}

// async opeartion

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
     //   testQueue()
       // testOperation()
        customO();
        
        
        
    }
    
    func customO()  {
        let custom =  CustomOperation()
        custom.start()
        let when =  DispatchTime.now() + 1.0
        
        DispatchQueue.main.asyncAfter(deadline: when) {
            print("cancel")
            custom.cancel()
        }
        
    }
    
    
    func testOperation(){
        
        let opertion = BlockOperation.init()
        opertion.addExecutionBlock {
            print( Thread.current,"first");
        }
        opertion.addExecutionBlock {
            print( Thread.current,"second");
        }
        opertion.addExecutionBlock {
            print( Thread.current,"third");
        }
        opertion.start()
        print(opertion.isConcurrent)
    }
    
    
    
    
    
    
    
    // == queue test01
    //
    func testQueue()  {
        let queue  = OperationQueue()
        let operation01 = BlockOperation()
        operation01.addExecutionBlock {
            print( Thread.current,"01")
        }
        operation01.queuePriority = .veryLow
        
        let operation02 = BlockOperation()
        operation02.addExecutionBlock {
            print( Thread.current,"02")
        }
        operation02.queuePriority = .veryHigh

        queue.addOperation(operation01)
        queue.addOperation(operation02);
        
        queue.maxConcurrentOperationCount = 2;

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}







