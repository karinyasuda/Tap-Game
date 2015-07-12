//
//  ScoreViewController.swift
//  puyo
//
//  Created by Karin on 2015/07/07.
//  Copyright (c) 2015年 Karin. All rights reserved.
//

import UIKit

class ScoreViewController:UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
}

    
    @IBAction func goBack(sender: UIButton){
        self.dismissViewControllerAnimated(true, completion: nil)
    }


}

