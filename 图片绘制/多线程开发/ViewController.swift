//
//  ViewController.swift
//  多线程开发
//
//  Created by admin on 13/10/2017.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var empImaeView: UIImageView!
    @IBOutlet weak var topView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let dra = DrawLine();
        view.addSubview(dra)
        
//        dra.frame = CGRect(x: 100, y: 100, width: 100, height: 100);
//        let draA = DrawArc();
//         draA.frame = CGRect(x: 200, y: 200, width: 100, height: 100);
//        view.addSubview(draA)
        
        
        let push = PushButton()
        push.frame = CGRect(x: 100, y: 100, width: 100, height: 100);
        view.addSubview(push);
        
        
        let pushA = PushAdd()
        pushA.frame = CGRect(x: 100, y: 300, width: 100, height: 100);
        view.addSubview(pushA);

        
        

        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // 1. 开启一个图形上下文
//        UIGraphicsBeginImageContext(topView.bounds.size);
        UIGraphicsBeginImageContextWithOptions(topView.bounds.size, false, UIScreen.main.scale)
        let ctx = UIGraphicsGetCurrentContext()
        topView.layer.render(in: ctx!);
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        empImaeView.image = image
        empImaeView.sizeToFit()
        
        
        let sec = SecondViewController()
        
        navigationController?.pushViewController(sec, animated: true);
        
        

        
    }
    
    override func viewDidLayoutSubviews() {
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

