//
//  common.swift
//  NoviceGuidanceViewer
//
//  Created by JOE on 2018/3/29.
//  Copyright © 2018年 Hongyear Information Technology (Shanghai) Co.,Ltd. All rights reserved.
//

import UIKit

///屏幕宽度
let screenWidth = UIScreen.main.bounds.size.width

///屏幕高度
let screenHeight = UIScreen.main.bounds.size.height

///RGB
let RGB: (CGFloat, CGFloat, CGFloat) -> UIColor = { (r, g, b) in
    return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: 1.0)
}

///RGBA
let RGBA: (CGFloat, CGFloat, CGFloat, CGFloat) -> UIColor = { (r, g, b, a) in
    return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
}

///zzj_keywindow
let zzj_keywindow = UIApplication.shared.keyWindow

///状态栏高度
let statusBarHeight = UIApplication.shared.statusBarFrame.size.height

///iPhone设备
let isIphone = (UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone ? true : false)

///iPad设备
let isIpad = (UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad ? true : false)













