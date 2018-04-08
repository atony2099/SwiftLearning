
import UIKit
import Foundation


import UIKit
import PlaygroundSupport //引入<code>Playground</code>支持

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
        
        let width = self.view.bounds.size.width;
        let height = self.view.bounds.size.height;
        
        
        
        let be = UIBezierPath()
        
        be.move(to: CGPoint.init(x: width/2, y: height) )
        
        
        be.addQuadCurve(to: CGPoint.init(x: width/2.0, y: 0), controlPoint: CGPoint.init(x: 20, y: height/2 ))
        
    
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = be.cgPath
        shapeLayer.lineWidth = 10.0
        shapeLayer.strokeColor = UIColor.blue.cgColor
        
        view.layer.addSublayer(shapeLayer)
        
        
        print(self.view.bounds)
    }
    
}

let myView = ViewController()
PlaygroundPage.current.liveView = myView //






// b . other queue























