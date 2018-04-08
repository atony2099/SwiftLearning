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


// async opeartion

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self;
        tableView.dataSource = self;
        tableView.contentInset = UIEdgeInsetsMake(0, 0, 100
            , 0);
        

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100;
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  UITableViewCell.init()
        cell.textLabel?.text = "123";
        return cell;
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100;
    }
    
}








