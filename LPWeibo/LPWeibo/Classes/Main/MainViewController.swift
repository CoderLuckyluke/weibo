//
//  MainViewController.swift
//  LPWeibo
//
//  Created by 刘鹏 on 15/10/20.
//  Copyright © 2015年 刘鹏. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        addChildViewController("ProfileTableViewController", title: "我", imageName: "tabbar_profile")
        
        addChildViewController("HomeTableViewController", title: "首页", imageName: "tabbar_home")
        
        addChildViewController("MessageTableViewController", title: "消息", imageName: "tabbar_message_center")
        
        addChildViewController("DiscoverTableViewController", title: "发现", imageName: "tabbar_discover")
        

    }
    
   
    func addChildViewController(childControllerName: String, title: String, imageName: String) {
        
       let nameSpace = NSBundle.mainBundle().infoDictionary!["CFBundleExecutable"]
        
        if let ns = nameSpace as? String
        {
            // 空间名拼接
        
            let cls: AnyClass? = NSClassFromString(ns + "." + childControllerName)
            
            // 如果解包成功,则赋值保存
            if let clsType = cls as? UIViewController.Type
            {
                // 创建控制器
                 let homeVc = clsType.init()
                
            
                // 设置属性
                tabBar.tintColor = UIColor.orangeColor()
                homeVc.tabBarItem.image = UIImage(named: imageName)
                homeVc.tabBarItem.selectedImage = UIImage(named: imageName + "_highlighted")
                // 导航控制器包装
                let nav = UINavigationController(rootViewController: homeVc)
                
                homeVc.title = title
                
                // 添加
                addChildViewController(nav)
    
            }

        }

    }
    
    
}
