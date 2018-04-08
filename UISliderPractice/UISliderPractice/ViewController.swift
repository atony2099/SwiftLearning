//
//  ViewController.swift
//  UISliderPractice
//
//  Created by admin on 21/11/2017.
//  Copyright © 2017 admin. All rights reserved.
//

import UIKit

class CustomSlider: UISlider {
    override func trackRect(forBounds bounds: CGRect) -> CGRect {
        var newBounds = super.trackRect(forBounds: bounds)
        newBounds.size.height = 10 
        return newBounds
    }
}

class ViewController: UIViewController {
    
    var count = 0;
    
    @IBOutlet weak var slider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let image = UIImage.init(named: "aa");
        self.slider.setThumbImage(image , for: .normal);
        self.slider.addTarget(self, action: #selector(scrollSlide), for: UIControlEvents.valueChanged);
        self.slider.isContinuous = false;
        
        self.slider.transform = slider.transform.rotated(by: CGFloat(0.5 * Float.pi))

        
        
        let sil = UISlider()
        
        let si2 = UISlider()

        view.addSubview(sil);
        view.addSubview(si2);
        
        sil.frame = CGRect(x: 100, y: 100, width: 200, height: 100);
       si2.frame = CGRect(x: 100, y: 100, width: 200, height: 100);
        
        sil.setThumbImage(image, for: .normal)
        
        
        sil.transform = sil.transform.rotated(by: CGFloat(0.5 * Float.pi))
        
    }
    
    
    @objc func scrollSlide()  {
        count += 1
        print(count)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

