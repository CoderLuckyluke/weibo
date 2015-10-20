//
//  AppDelegate.swift
//  LPWeibo
//
//  Created by 刘鹏 on 15/10/20.
//  Copyright © 2015年 刘鹏. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        // 创建窗口啊
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        // 跟控制器
        window?.backgroundColor = UIColor.whiteColor()
        
        window?.rootViewController = MainViewController()
        
        // 显示窗口
        window?.makeKeyAndVisible()
        return true
    }

}


// mark  自定义 log
func LPLog<T>(message: T, file: NSString = __FILE__, method: String = __FUNCTION__, line: Int = __LINE__)
{
    #if DEBUG
        print("\(method)[\(line)]: \(message)")
    #endif
}


