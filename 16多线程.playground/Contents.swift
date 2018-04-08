
import UIKit
import Foundation


//1. ===== NSOperation _baseOperation

// a.block operation
let opertion = BlockOperation.init()
opertion.addExecutionBlock {
    print( Thread.current);
}

opertion.addExecutionBlock {
    print( Thread.current);
}

opertion.addExecutionBlock {
    print( Thread.current);
}


opertion.start()
print(opertion.isConcurrent)

opertion.cancel()


// 2. opearation queue ==
// a . main queue
let queue  = OperationQueue.main
let operation01 = BlockOperation()
operation01.addExecutionBlock {
    print( Thread.current,"01")
}
queue.addOperation(operation01)














// b . other queue























