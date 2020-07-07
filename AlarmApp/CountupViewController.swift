//
//  CountupViewController.swift
//  AlarmApp
//
//  Created by 犀川輝也 on 2020/04/24.
//  Copyright © 2020 net.geeksalon. All rights reserved.
//

import UIKit

class CountupViewController: UIViewController {
    
    // 使用するデータの宣言
    //Int型の変数を用意して、初期値を0にする
    var number: Int = 50
    // 変数の書き方
    // var 変数名: データの型 = 初期値
    // ラベルを宣言、storyboard上に配置されている
    @IBOutlet var label:UILabel!
    // IB =interfacebuilder Outlet プログラムから命令を受け取るパーツ
    // var 変数名: データの型!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = String(number)
    }

    @IBAction func push(){
        
        number = number - 1
        label.text = String(number)
        
    }
    
    
    
}
