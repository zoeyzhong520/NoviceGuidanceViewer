//
//  NoviceGuidanceBaseViewController.swift
//  NoviceGuidanceViewer
//
//  Created by JOE on 2018/3/29.
//  Copyright © 2018年 Hongyear Information Technology (Shanghai) Co.,Ltd. All rights reserved.
//

import UIKit

class NoviceGuidanceBaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setPage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension NoviceGuidanceBaseViewController {
    
    fileprivate func setPage() {
        
        //设置背景色
        self.view.backgroundColor = UIColor.white
    }
}
