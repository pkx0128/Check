//
//  ViewController.swift
//  check
//
//  Created by Pankx on 16/3/16.
//  Copyright © 2016年 Pankx. All rights reserved.
// //218.4.255.255

import UIKit
import Alamofire

class ViewController: UIViewController,UIAlertViewDelegate {
    
    @IBOutlet weak var input_IP: UITextField!
    @IBAction func check(sender: AnyObject) {
        let ip = input_IP.text;
        checkData(ip!);
    }

    @IBOutlet weak var TextCont: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //checkData();
                // Do any additional setup after loading the view, typically from a nib.
    }
    //let parameters = ["ip",input_IP.text]
    func checkData(ip : String) {
        Alamofire.request(.GET , "http://ip.taobao.com/service/getIpInfo.php?ip="+ip)
            .responseJSON{response in
//                print(response.result.value);
//                print("=============================================");
                let str = response.result.value;
                let city = str!["data"]!!["city"] as! String
                let country = str!["data"]!!["country"] as! String
                let ip = str!["data"]!!["ip"] as! String
                let isp = str!["data"]!!["isp"] as! String
                let region = str!["data"]!!["region"] as! String
                //对话框显示查询结果
                let al = UIAlertView();
                al.title = "IP查询结果";
                al.message = "IP地址："+ip+"\n"+"国家："+country+"\n"+"省份："+region+"\n"+"城市："+city+"\n"+"运营商：中国"+isp;
                al.addButtonWithTitle("OK")
                al.show();
                
                

        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

