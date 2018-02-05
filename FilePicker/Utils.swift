//
//  Utils.swift
//  FilePicker
//
//  Created by liumingming on 2018/2/5.
//  Copyright © 2018年 LMM. All rights reserved.
//

import UIKit

class Utils: NSObject {
    
    static func topviewController() -> UIViewController? {
        
        var aRoot = UIApplication.shared.keyWindow?.rootViewController
        
        while aRoot?.presentedViewController != nil {
            aRoot = aRoot?.presentedViewController
            
            if aRoot is UINavigationController {
                aRoot = (aRoot as? UINavigationController)?.visibleViewController
            } else if aRoot is UITabBarController {
                aRoot = (aRoot as? UITabBarController)?.selectedViewController
            }
        }
        
        return aRoot
    }
}
