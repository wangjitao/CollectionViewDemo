//
//  DetailViewController.swift
//  CollectionViewDemo
//
//  Created by 王纪涛 on 16/3/22.
//  Copyright © 2016年 YDSports (Beijing) Technology Co. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.yellowColor()
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
