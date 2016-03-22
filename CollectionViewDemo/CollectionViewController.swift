//
//  CollectionViewController1.swift
//  CollectionViewDemo
//
//  Created by 王纪涛 on 16/3/22.
//  Copyright © 2016年 YDSports (Beijing) Technology Co. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    var collectionView:UICollectionView!
    var dataSource:NSMutableArray?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareDataAndLayoutSubViewsForCollectionView()
    }
    
    func prepareDataAndLayoutSubViewsForCollectionView() {
        prepareDataForCollectionView()
        layoutSubViewsForCollectionView()
    }
    
    func prepareDataForCollectionView() {
        
    }
    
    func layoutSubViewsForCollectionView() {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        //等于下面UICollectionViewDelegateFlowLayout代理里面的两个函数
        //layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
        //layout.itemSize = CGSize(width: 90, height: 120)
        
        collectionView = UICollectionView(frame: CGRectMake(0, 64, UIScreen.mainScreen().bounds.size.width, UIScreen.mainScreen().bounds.size.height - 64), collectionViewLayout: layout)
        //collectionView默认的背景色是黑色的
        collectionView.backgroundColor = UIColor.grayColor()
        collectionView.dataSource = self
        collectionView.delegate = self
        //这里要注册cell
        collectionView.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: "CellId")
        self.view.addSubview(collectionView)
        
    }
    
    /*------- UICollectionViewDataSource -------*/
    //定义展示的UICollectionViewCell的个数
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    //定义展示的Section的个数
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    //每个UICollectionView展示的内容
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cellId = "CellId"
        let cell:UICollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier(cellId, forIndexPath: indexPath)
        cell.backgroundColor = UIColor.init(red:255.0, green:255.0, blue: 255.0, alpha: 1.0)
        
        return cell;
    }
    
    /*------- UICollectionViewDelegateFlowLayout -------*/
    //定义每个UICollectionView 的大小
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSizeMake(100, 100)
    }
    
    //定义每个UICollectionView 的 margin
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 10, bottom: 10, right: 10)
    }
    
    //设置间距
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 50
    }
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return 20
    }
    
    /*
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
    
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
    
    }
    */
    
    
    /*------- UICollectionViewDelegate ----------*/
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let detailVC = DetailViewController()
        self .presentViewController(detailVC, animated: true, completion: nil)
    }
    
    func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
