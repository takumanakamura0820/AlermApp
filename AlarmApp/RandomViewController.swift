//
//  RandomViewController.swift
//  AlarmApp
//
//  Created by 犀川輝也 on 2020/04/24.
//  Copyright © 2020 net.geeksalon. All rights reserved.
//

import UIKit

class RandomViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0..<60{
            
            let button  = UIButton()
            
            //スクリーンの幅
            let screenWidth = Int( UIScreen.main.bounds.size.width);

            //スクリーンの高さ
            let screenHeight = Int(UIScreen.main.bounds.size.height);

            //CGRectで取得
            let rect = UIScreen.main.bounds;
            let c : CGRect = UIScreen.main.bounds
            
            button.frame = CGRect(x: Int(arc4random_uniform(UInt32(screenWidth - 100))), y: Int(arc4random_uniform(UInt32(screenHeight - 200))), width: 100, height: 100)
                // ボタンの設置座標とサイズを設定する.
            
                button.backgroundColor = UIColor.green
                // buttonのbackgroundcolorを指定
            
                button.setTitle("起きて！", for: .normal)
                // 通常時のbuttonの文字を指定
            
            button.addTarget(self, action: #selector(self.hide(_:)), for: .touchUpInside)
            
                view.addSubview(button)
                // 実際にviewに表示する
            
                
        
        }
        let button  = UIButton()
            
             //スクリーンの幅
            let screenWidth = Int( UIScreen.main.bounds.size.width);

            //スクリーンの高さ
            let screenHeight = Int(UIScreen.main.bounds.size.height);

            //CGRectで取得
            let rect = UIScreen.main.bounds;
            let c : CGRect = UIScreen.main.bounds
                       
            button.frame = CGRect(x: Int(arc4random_uniform(UInt32(screenWidth - 100))), y: Int(arc4random_uniform(UInt32(screenHeight - 200))), width: 100, height: 100)
                           // ボタンの設置座標とサイズを設定する.
                       
                button.backgroundColor = UIColor.green
                // buttonのbackgroundcolorを指定
            
                button.setTitle("起きて！", for: .normal)
                // 通常時のbuttonの文字を指定
            
            button.addTarget(self, action: #selector(self.answer(_:)), for: .touchUpInside)
            
                view.addSubview(button)
                // 実際にviewに表示する
            
                print(button)
        
       
        
               
        // 例えば0〜5の6種類のランダムな整数値だったら
        //var randNum = arc4random_uniform(6)


        /*
        var randNum = Int(arc4random()) % ランダム最大値
        // 例えば0〜5の6種類のランダムな整数値だったら
        var randNum = Int(arc4random()) % 6
        */
        
    }
   
     @objc func hide(_ sender:UIButton){
         //ぼたんかくす
        sender.isHidden = true
        
    
        
    }
    
    @objc func answer(_ sender:UIButton){
    
        
    }
    
}
