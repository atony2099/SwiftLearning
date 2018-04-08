//
//  ViewController.swift
//  InsetPractice
//
//  Created by admin on 06/01/2018.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollview: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollview.backgroundColor = UIColor.red
        scrollview.contentSize = UIScreen.main.bounds.size
        
        scrollview.contentInset = UIEdgeInsetsMake(100, 0, 0,    0);
        // Do any additional setup after loading the view, typically from a nib.
        let view = UIView()
        view.backgroundColor = UIColor.blue;
        view.frame = CGRect(x: 0, y: 0, width: 100, height: 100);
        scrollview.addSubview(view)
        
        
        let view2 = UIView()
        view2.backgroundColor = UIColor.green
        scrollview.addSubview(view2)
        
        
//        view2.frame.origin =
        
        
  
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

