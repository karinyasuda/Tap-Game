//
//  ViewController.swift
//  puyo
//
//  Created by Karin on 2015/07/02.
//  Copyright (c) 2015年 Karin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
     var puyoImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        puyoImageView = UIImageView(frame: CGRectMake(0,0,50,50))
        let mainImage = UIImage(named: "puyo2.png")
        puyoImageView.image = mainImage
        puyoImageView.center = self.view.center
        //            CGPointMake(100,100)
        self.view.addSubview(puyoImageView)
        
    }
    @IBAction func backFromSecondView(segue:UIStoryboardSegue){
    NSLog("FirstViewController#backFromSecondView")}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

