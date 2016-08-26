//
//  AboutMeViewController.swift
//  Chat-iOS
//
//  Created by xiaolei on 2016/8/25.
//  Copyright © 2016年 xiaolei. All rights reserved.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet weak var sign: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var backimage: UIImageView!
    @IBOutlet weak var userPhoto: UIImageView!
    @IBOutlet weak var vcon: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        vcon.constant = (view.bounds.size.width * (9 / 16) - view.bounds.size.height / 2) / 2
        userPhoto.layer.cornerRadius = 111 / 2
        let tapBackimage = UITapGestureRecognizer(target: self, action: #selector(tapBackImageAction))
        backimage.addGestureRecognizer(tapBackimage)
        
        let tapUsrePhoto = UITapGestureRecognizer(target: self, action: #selector(tapUserPhotoAction))
        userPhoto.addGestureRecognizer(tapUsrePhoto)
    }

    func tapBackImageAction() {
        print("更换背景图")
    }
    
    func tapUserPhotoAction() {
        print("更换头像")
    }

}
