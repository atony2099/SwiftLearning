//
//  SecondViewController.swift
//  多线程开发
//
//  Created by admin on 02/01/2018.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
            
            self?.meP();
            SecondViewController.meP();
            
        }

        
    }
    deinit {
        
        
    }
    
    
    
    func  meP(){
        print("hello")
    }
    
    
    
    class func meP () {
        print("go--go")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
