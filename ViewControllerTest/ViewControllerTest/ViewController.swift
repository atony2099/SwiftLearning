//
//  ViewController.swift
//  ViewControllerTest
//
//  Created by admin on 01/12/2017.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("1==viewDidLoad")

    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("1==viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("1==viewDidAppear")

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("1==viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("1==viewDidDisappear")

    }
    @IBAction func click(_ sender: Any) {
        
        performSegue(withIdentifier: "a", sender: nil)
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

