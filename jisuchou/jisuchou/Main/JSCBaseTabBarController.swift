//
//  JSCBaseTabBarController.swift
//  jisuchou
//
//  Created by zhangzhenwei on 2017/8/11.
//  Copyright © 2017年 qingsongchou. All rights reserved.
//

import UIKit

class JSCBaseTabBarController: UITabBarController {

    override class func initialize() {
        var attrs = [String: NSObject]()
        attrs[NSForegroundColorAttributeName] = UIColor.lightText
        // 设置tabBar字体颜色
        UITabBarItem.appearance().setTitleTextAttributes(attrs, for:.selected)
    }
    
    
    // MARK: - life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        addChildViewControllers()
        let backView = UIView(frame: CGRect(x: 0, y: 0, width: 375, height: 49))
        backView.backgroundColor = UIColor.white
        tabBar.insertSubview(backView, at: 0)
        tabBar.isOpaque = true
    }


    // MARK: - private method
    /// 添加所有子控制器
    func addChildViewControllers() {
        
        setupOneChildViewController("首页", image: "Assets_Tabbar_Icon_Home", selectedImage: "Assets_Tabbar_Icon_Home_Selected", controller: JSCHomeViewController.init())
        setupOneChildViewController("通知", image: "menu_goddess_dy", selectedImage: "menu_goddess_dyse", controller: JSCMessageViewController.init())
        setupOneChildViewController("我的", image: "Icon_Me", selectedImage: "Icon_Me_Selected", controller: JSCMeViewController.init())
    }
    
    
    /// 添加一个子控制器
    fileprivate func setupOneChildViewController(_ title: String, image: String, selectedImage: String, controller: UIViewController) {
        
        controller.tabBarItem.title = title
        controller.title = title
        controller.tabBarItem.image = UIImage(named: image)
        controller.tabBarItem.selectedImage = UIImage(named: selectedImage)
        let naviController = JSCBaseNavigationController.init(rootViewController: controller)
        addChildViewController(naviController)
    }
    
    

}
