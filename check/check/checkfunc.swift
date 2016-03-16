//
//  checkfunc.swift
//  check
//
//  Created by Pankx on 16/3/16.
//  Copyright © 2016年 Pankx. All rights reserved.
//

import Foundation
import Alamofire
//定义查询函数
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
            print(country)
            let al = UIAlertView();
            al.title = "IP查询结果";
            al.message = "IP地址："+ip+"\n"+"国家："+country+"\n"+"省份："+region+"\n"+"城市："+city+"\n"+"运营商："+isp;
            al.addButtonWithTitle("OK")
            al.show();
            
            
            
    }
}