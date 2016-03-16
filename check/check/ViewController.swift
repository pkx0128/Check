//
//  ViewController.swift
//  check
//
//  Created by Pankx on 16/3/16.
//  Copyright © 2016年 Pankx. All rights reserved.
// 218.4.255.255

import UIKit
import Alamofire

class ViewController: UIViewController,UIAlertViewDelegate {
    //设置TextField关联
    @IBOutlet weak var input_IP: UITextField!
    //设置button关联
    @IBAction func check(sender: AnyObject) {
        let ip = input_IP.text
         if ip != ""{
         checkData(ip!);
            print(ip);
        }else{
            let alc = UIAlertView();
            alc.message = "请输入合法的IP地址！";
            alc.addButtonWithTitle("OK");
            alc.show();
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
       // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

