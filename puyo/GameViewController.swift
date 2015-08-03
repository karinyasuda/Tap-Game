//
//  GameViewController.swift
//  puyo
//

//  Created by Karin on 2015/07/07.
//  Copyright (c) 2015年 Karin. All rights reserved.
//

import UIKit

class GameViewController:UIViewController{
    
    var mainImageView: UIImageView!//主人公表示imageview
    var enemy1ImageView:UIImageView!
    var enemy2ImageView:UIImageView!//敵の表示imageview
    var positionx:CGFloat = 320//敵の位置　x座標の関数
    var positiony:CGFloat = 100//敵の位置　y座標の関数
    var a:CGFloat = 70//主人公の位置　x座標の関数
    var b:CGFloat = 10//主人公の位置　y座標の関数
//    var w:CGFloat = 0　　今のところいらない関数定義
    var timer : NSTimer!//敵と主人公３つが動くためのtimer
//    var jumptimer : NSTimer!//ボタンを押したときに上に上がるようにしたいと思って作ったtimer
    var countNum :CGFloat = 0 //timerで増える数。
    
    
//    @IBAction func TapScreen(sender: UIButton) {
//    //ボタンをAction接続
//        println("Tap button")
//        
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //UIimageViewを作る(x座標, y座標, width, height)
        mainImageView = UIImageView(frame: CGRectMake(a,b,50,50))//xとyには関数が入る
        let mainImage = UIImage(named: "puyo2.png")//puyo2というimageをmainimageとして置く
        mainImageView.image = mainImage//mainimageviewのimageはmainimageに

        self.view.addSubview(mainImageView)
        
        
        //UIimageViewを作る(x座標, y座標, width, height)
        enemy1ImageView = UIImageView(frame: CGRectMake(positionx,positiony+50, 50, 50))//xとyには関数が入る
        let enemy1Image = UIImage(named: "puyopuyo1.png")//puyopuyo1というimageをenemyimageとして置く
        enemy1ImageView.image = enemy1Image//enemy1Imageviewのimageはenemy1image
        
        self.view.addSubview(enemy1ImageView)
        
        
        
        enemy2ImageView = UIImageView(frame: CGRectMake(positionx, positiony, 50, 50))//xとyには関数が入る
        let enemy2Image = UIImage(named: "puyopuyo2.png")//puyopuyo2というimageをenemyimageとして置く
        enemy2ImageView.image = enemy2Image//enemy2Imageviewのimageはenemy2image

        self.view.addSubview(enemy2ImageView)

        
        //タイマーを作る
        //更新のインターバル0.1s
        var timer = NSTimer.scheduledTimerWithTimeInterval(0.1,
  
            //そのクラスのメソッドか
            target: self,
            
            //メソッド
            selector:Selector("transfer:"),
            userInfo: nil,
            
            //何回も呼び出すかどうか
            repeats: true)
        

        
    }
//    @IBAction func TapScreen(sender: UIButton) {
//        //ボタンをAction接続
//        var mainImage: UIImageView = mainImageView
//        var timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector:Selector("tap"), userInfo: nil, repeats: true)
//        println("Tap button")
//        func tap (){countNum++}
//        
//        
//        if countNum >= 1{
//            if countNum <= 4{
//                b = b-3.0
//                mainImage.frame = (CGRectMake(a, b+100, 50, 50))}
//            
//            else if countNum >= 5{
//                b = b+3.0
//                mainImage.frame = (CGRectMake(a, b+100, 50, 50))}
//        }
//    }


    
    func transfer(timer : NSTimer){
        println("移動！")
        
        
        self.move2()
  
        
        self.move()
        
//        
//        self.create()
        
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
    
    
//    func tap(){
////        if (){
////        countNum++
//        
//        var mainImage: UIImageView = mainImageView
//        
//        if(countNum <= 4){
//            
//            
//             b = b-3.0
//            
//            mainImage.frame = (CGRectMake(a, b+100, 50, 50))
//            
//            
//        }
//        else if (countNum <= 8){
//            
//            
//            b = b+3.0
//            
//            mainImage.frame = (CGRectMake(a, b+100, 50, 50))
//        }
//        else{
//            
//            mainImage.frame = ( CGRectMake(a,b+100, 50, 50))}
//        }
//    else{}
//}
//    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    @IBAction func goBack(sender: UIButton){
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}
