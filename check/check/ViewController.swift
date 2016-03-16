//
//  ViewController.swift
//  check
//
//  Created by Pankx on 16/3/16.
//  Copyright © 2016年 Pankx. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        checkData();
                // Do any additional setup after loading the view, typically from a nib.
    }
    
    func checkData() {
        Alamofire.request(.GET , "http://ip.taobao.com/service/getIpInfo.php?ip=218.4.255.255")
            .responseJSON{response in
                print(response.result.value);
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

