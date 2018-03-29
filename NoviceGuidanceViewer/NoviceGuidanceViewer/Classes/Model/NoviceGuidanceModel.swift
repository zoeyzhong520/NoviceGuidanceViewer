//
//  NoviceGuidanceModel.swift
//  NoviceGuidanceViewer
//
//  Created by JOE on 2018/3/29.
//  Copyright © 2018年 Hongyear Information Technology (Shanghai) Co.,Ltd. All rights reserved.
//

import UIKit

class NoviceGuidanceModel: NSObject {

    var images:Array<String>?
    
    class func configModel(images: [String]) -> NoviceGuidanceModel {
        
        let model = NoviceGuidanceModel()
        model.images = images
        return model
    }
}
