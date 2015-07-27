//
//  GameViewController.swift
//  puyo
//
//  Created by Karin on 2015/07/07.
//  Copyright (c) 2015年 Karin. All rights reserved.
//

import UIKit

class GameViewController:UIViewController{
    
    var mainImageView: UIImageView!
    var enemy1ImageView:UIImageView!
    var enemy2ImageView:UIImageView!
    var positionx:CGFloat = 320
    var positiony:CGFloat = 100
    var a:CGFloat = 100
    var b:CGFloat = 1
    var w:CGFloat = 0
    var timer : NSTimer!
    var jumptimer : NSTimer!
    var countNum = 0
    
    
    @IBAction func TapScreen(sender: UIButton) {
        
        println("Tap button")
//        var jumptimer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("create:"), userInfo: nil, repeats: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        mainImageView = UIImageView(frame: CGRectMake(a,b,50,50))
        let mainImage = UIImage(named: "puyo2.png")
        mainImageView.image = mainImage
        mainImageView.center = self.view.center
//            CGPointMake(100,100)
        self.view.addSubview(mainImageView)
        
        
        
        enemy1ImageView = UIImageView(frame: CGRectMake(positionx,positiony+50, 50, 50))
        let enemy1Image = UIImage(named: "puyopuyo1.png")
        enemy1ImageView.image = enemy1Image
        //enemy1ImageView.center = CGPointMake(positionx,positiony)
//            self.view.center
        self.view.addSubview(enemy1ImageView)
        
        
        
        enemy2ImageView = UIImageView(frame: CGRectMake(positionx, positiony, 50, 50))
        let enemy2Image = UIImage(named: "puyopuyo2.png")
        enemy2ImageView.image = enemy2Image
//        enemy2ImageView.center = self.view.center
        //            CGPointMake(100,100)
        self.view.addSubview(enemy2ImageView)

        
        
        var timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector:Selector("transfer:"), userInfo: nil, repeats: true)
        

        
    }

    
    func transfer(timer : NSTimer){
        println("移動！")
        
        
        self.move2()
  
        
        self.move()
        
    }

    
    func move(){
        
        var enemy1:UIImageView = enemy1ImageView
        
        var enemy2:UIImageView = enemy2ImageView
        
        
        positionx = positionx-3.0
        
        
        enemy1.frame = ( CGRectMake(positionx,positiony+200, 50, 50))
        enemy2.frame = ( CGRectMake(positionx, positiony, 50, 50))
   
    }
    func move2(){
        println("落ちる〜〜")
        var mainImage: UIImageView = mainImageView
        
        b = b+5.0
        
        mainImage.frame = ( CGRectMake(a,b+100, 50, 50))
    
    }
    
    
    func create(){
        countNum++
        
        var mainImage: UIImageView = mainImageView
        
        if(countNum <= 4){
            
            
             b = b-3.0
            
            mainImage.frame = (CGRectMake(a, b+100, 50, 50))
            
            
        }
        else if (countNum <= 8){
            
            
            b = b+3.0
            
            mainImage.frame = (CGRectMake(a, b+100, 50, 50))
        }
        else{
            
            mainImage.frame = ( CGRectMake(a,b+100, 50, 50))}
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    @IBAction func goBack(sender: UIButton){
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
