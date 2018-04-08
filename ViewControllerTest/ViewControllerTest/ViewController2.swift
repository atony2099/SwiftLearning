//
//  ViewController2.swift
//  ViewControllerTest
//
//  Created by admin on 01/12/2017.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("2==== viewDidLoad")
        let  delay = DispatchTime.now() + 0.00001
        DispatchQueue.main.asyncAfter(deadline: delay) {
            print("2===== asyafter")
        }
        
        sleep(5)
    }
    override func viewWillAppear(_ animated: Bool) {
        print("2=======viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("2======viewDidAppear")
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("2========viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("2======viewDidDisappear")
        
    }
    @IBAction func click(_ sender: Any) {
        
        performSegue(withIdentifier: "a", sender: nil)
    }

    
    deinit {
        print("2 ====== deinit")
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
