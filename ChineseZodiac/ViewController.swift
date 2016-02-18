//
//  ViewController.swift
//  ChineseZodiac
//
//  Created by chon on 16/2/18.
//  Copyright © 2016年 chon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textYear: UITextField!
    @IBOutlet weak var imgZodiac: UIImageView!
    
    let offset = 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        // 隐藏键盘
        textYear.resignFirstResponder()
    }
    
    @IBAction func btnConfirm(sender: UIButton) {
        textYear.resignFirstResponder()
        if let year = Int(textYear.text!) {
            let num = (year - offset) % 12
            imgZodiac.image = UIImage(named: String(num))
        }
    }

}

