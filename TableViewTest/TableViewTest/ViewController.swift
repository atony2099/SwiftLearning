//
//  ViewController.swift
//  TableViewTest
//
//  Created by admin on 09/12/2017.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit



class CustCell:UITableViewCell{
    
    var label = UILabel.init()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(label);
        label.frame = CGRect.init(origin: CGPoint.init(x: 0, y: 0), size: CGSize.init(width: 100, height: 200));
        label.backgroundColor = UIColor.red;
        
        let get = UITapGestureRecognizer.init(target: self, action: #selector(click))
        label.addGestureRecognizer(get);
//        label.separatorInset = UIEdgeInsets.zero;

    }
    @objc func click()  {
        print("click")
    }
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let view = super.hitTest(point, with: event);
        return view;
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class ViewController: UIViewController,UITableViewDataSource {

    let ident = "cust"
    var table:UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let table = UITableView();
        
        table.frame = self.view.bounds;
        table.frame.origin.y = 20
        table.backgroundColor = UIColor.red;
        
        view.addSubview(table)
        
        let view1 = UIView()
        view1.backgroundColor = UIColor.blue;
//        view1.frame.size.width = self.view.bounds.size.width;
        view1.frame.size.height = 200;
//        view1.frame.origin = CGPoint.init(x: 0, y: 0);
        
        table.tableHeaderView = view1;
        table.separatorColor = UIColor.blue
        table.rowHeight = 300;
      //  table.separatorStyle = .none
        
    
        table.dataSource = self;
        self.table = table;
        table.register(CustCell.self, forCellReuseIdentifier: ident)
    }

    override func viewDidAppear(_ animated: Bool) {
        print(self.table?.contentOffset)
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 200;
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let v:CustCell  = tableView.dequeueReusableCell(withIdentifier: ident, for: indexPath) as! CustCell
        v.label.text = "123";
        
//        let get = UITapGestureRecognizer.init(target: self, action: #selector(click))
//        v.label.addGestureRecognizer(get);
        v.separatorInset = UIEdgeInsets.zero;
        return v
        
    }

    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

