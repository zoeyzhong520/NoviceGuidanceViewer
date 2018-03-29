//
//  NoviceGuidanceHomeViewController.swift
//  NoviceGuidanceViewer
//
//  Created by JOE on 2018/3/29.
//  Copyright © 2018年 Hongyear Information Technology (Shanghai) Co.,Ltd. All rights reserved.
//

import UIKit

class NoviceGuidanceHomeViewController: NoviceGuidanceBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setPage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension NoviceGuidanceHomeViewController {
    
    fileprivate func setPage() {
        
        //设置标题
        self.title = "Home"
        
        //设置按钮
        let buttonsArray = ["跳转到 NoviceGuidanceViewController"]
        for i in 0..<buttonsArray.count {
            let w:CGFloat = screenWidth / CGFloat(buttonsArray.count)
            let h:CGFloat = 48
            
            let btn = UIButton(type: .system)
            btn.frame = CGRect(x: w * CGFloat(i), y: statusBarHeight + 64 + h, width: w, height: h)
            btn.setTitle(buttonsArray[i], for: .normal)
            btn.tag = i
            btn.addTarget(self, action: #selector(buttonAction(btn:)), for: .touchUpInside)
            self.view.addSubview(btn)
        }
    }
    
    @objc fileprivate func buttonAction(btn: UIButton) {
        
        switch btn.tag {
        case 0:
            self.navigationController?.pushViewController(NoviceGuidanceViewController(), animated: true) //push
        default:
            break
        }
    }
}












