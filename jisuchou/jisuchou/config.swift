//
//  config.swift
//  jisuchou
//
//  Created by zhangzhenwei on 2017/8/11.
//  Copyright © 2017年 qingsongchou. All rights reserved.
//

import Foundation
import UIKit

let kStatusBarH: CGFloat = 20
let kNavigationBarH: CGFloat = 44
let kTabBarH: CGFloat = 49
let kScreenW = UIScreen.main.bounds.width
let kScreenH = UIScreen.main.bounds.height
let BGCOLOR: UIColor = UIColor(gray: 244)

let kThemeColor   = UIColor(red: 63.0/255.0, green: 67.0/255.0, blue: 76.0/255.0, alpha: 1.0)

/// RGBA的颜色设置
func JSCColor(r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) -> UIColor {
    return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
}
