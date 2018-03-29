//
//  NoviceGuidanceView.swift
//  NoviceGuidanceViewer
//
//  Created by JOE on 2018/3/29.
//  Copyright © 2018年 Hongyear Information Technology (Shanghai) Co.,Ltd. All rights reserved.
//

import UIKit

class NoviceGuidanceView: UIView {

    ///model
    fileprivate var model:NoviceGuidanceModel?
    
    ///scrollView
    fileprivate var scrollView:UIScrollView?

    init(frame: CGRect, model:NoviceGuidanceModel?) {
        super.init(frame: frame)
        self.model = model
        self.setupContent()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension NoviceGuidanceView {
    
    fileprivate func setupContent() {
        
        //设置frame
        self.frame = CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight)
        
        //设置背景色
        self.backgroundColor = UIColor.clear
        
        if scrollView == nil {
            //设置scrollView
            scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight))
            scrollView?.isPagingEnabled = true
            scrollView?.bounces = false //取消弹框效果
            scrollView?.delegate = self
            self.addSubview(scrollView!)
            
            self.configContent()
        }
    }
    
    fileprivate func configContent() {
        
        //设置imageView
        guard let images = model?.images else {
            print("images is nil")
            return
        }
        
        for i in 0..<images.count {
            let imageView = UIImageView(frame: CGRect(x: screenWidth * CGFloat(i), y: 0, width: screenWidth, height: screenHeight))
            imageView.image = UIImage(named: images[i])
            imageView.contentMode = .scaleAspectFit
            imageView.tag = i
            imageView.isUserInteractionEnabled = true
            imageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapAction(tap:))))
            scrollView?.addSubview(imageView)
        }
        
        //设置滚动范围
        scrollView?.contentSize = CGSize(width: screenWidth * CGFloat(images.count), height: screenHeight)
    }
    
    @objc fileprivate func tapAction(tap: UITapGestureRecognizer) {
        
        guard let tag = tap.view?.tag, let images = model?.images else {
            print("tag is nil")
            return
        }
        
        if tag + 1 >= images.count {
            disMissView()
            return
        }
        
        let point = CGPoint(x: screenWidth * CGFloat(tag+1), y: 0)
        scrollView?.setContentOffset(point, animated: false)
    }
    
    ///显示View
    func showInView(view: UIView?) {
        
        if view == nil {
            return
        }
        
        view?.addSubview(self)
        view?.addSubview(scrollView!)
        self.scrollView?.alpha = 0.0
        
        UIView.animate(withDuration: 0.3, animations: {
            self.scrollView?.alpha = 1.0
        }) { (finished) in
            
        }
    }
    
    fileprivate func disMissView() {
        
        self.scrollView?.alpha = 1.0
        UIView.animate(withDuration: 0.3, animations: {
            self.scrollView?.alpha = 0.0
        }) { (finished) in
            self.removeFromSuperview()
            self.scrollView?.removeFromSuperview()
        }
    }
}

extension NoviceGuidanceView: UIScrollViewDelegate {
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
    }
}











