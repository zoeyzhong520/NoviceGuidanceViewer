//
//  NoviceGuidanceViewController.swift
//  NoviceGuidanceViewer
//
//  Created by JOE on 2018/3/29.
//  Copyright © 2018年 Hongyear Information Technology (Shanghai) Co.,Ltd. All rights reserved.
//

import UIKit

class NoviceGuidanceViewController: NoviceGuidanceBaseViewController {

    fileprivate var noviceGuidanceView:NoviceGuidanceView?
    
    lazy var imagesArray:[String] = {
        var imagesArray = [String]()
        for i in 0..<8 {
            imagesArray.append("sildingMenuView_guidanceImg\(i+1)")
        }
        return imagesArray
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addNoviceGuidanceView()
        self.setPage()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension NoviceGuidanceViewController {
    
    fileprivate func setPage() {
        
        //设置标题
        self.title = "NoviceGuidanceView"
        
    }
    
    fileprivate func addNoviceGuidanceView() {
        
        //设置NoviceGuidanceView
        let model = NoviceGuidanceModel.configModel(images: self.imagesArray)
        noviceGuidanceView = NoviceGuidanceView(frame: .zero, model: model)
        noviceGuidanceView?.showInView(view: zzj_keywindow)
    }
}











