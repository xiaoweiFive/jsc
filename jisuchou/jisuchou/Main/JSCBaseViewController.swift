//
//  JSCBaseViewController.swift
//  jisuchou
//
//  Created by zhangzhenwei on 2017/8/11.
//  Copyright © 2017年 qingsongchou. All rights reserved.
//

import UIKit

class JSCBaseViewController: UIViewController {

    var contentView : UIView?
    fileprivate lazy var loadView: UIView = { [unowned self] in
        let view = UIView()
        view.frame = CGRect(origin: .zero, size: CGSize(width: kScreenW, height: kScreenH-kNavigationBarH-2 * kTabBarH))
        
        let imageView = UIImageView(image: UIImage(named: "0tai_icon2-1"))
        imageView.center = view.center
        imageView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        let title = UILabel()
        title.font = UIFont.systemFont(ofSize: 13)
        title.textColor = UIColor.darkGray
        title.text = "在这里，你会找到最有趣的直播。"
        title.textAlignment = .center
        title.center = CGPoint(x: imageView.center.x, y: imageView.frame.maxY+10)
        title.bounds.size = CGSize(width: kScreenW, height: 20)
        
        view.addSubview(imageView)
        view.addSubview(title)
        return view
        
        }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        setupUI()
    }

}


extension JSCBaseViewController {
    func setupUI() {
        contentView?.isHidden = true
        view.addSubview(loadView)
        view.backgroundColor = UIColor.lightText
    }
    
    func loadDataFinished() {
        loadView.isHidden = true
        contentView?.isHidden = false
    }
    
    func resetData() {
        loadView.isHidden = false
        contentView?.isHidden = true
    }
}
