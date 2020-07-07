//
//  ShakeViewController.swift
//  AlarmApp
//
//  Created by 犀川輝也 on 2020/04/20.
//  Copyright © 2020 net.geeksalon. All rights reserved.
//

import UIKit
import CoreMotion

class ShakeViewController: UIViewController {
    //宣言する
    @IBOutlet var shakeCountLabel : UILabel!
    @IBOutlet var resetButton : UIButton!
    var countNum :Int = 0

    // MotionManagerを生成.
    let motionManager = CMMotionManager()
    var x = 0
    var y = 0
    var z = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        //ラベルにかcountNumの中身を表示させる
        shakeCountLabel.text = String(countNum)
        
        //加速データを取得する間隔を指定する
        self.motionManager.accelerometerUpdateInterval = 0.5
        // 加速度の取得を開始.

        motionManager.startAccelerometerUpdates(to: OperationQueue.current!, withHandler: { (data, err) in
            let acc = data?.acceleration  // 加速度データの取得
            print(acc?.x ?? 0)            // x軸の値を表示

         //   もしx方向の加速度がnilじゃなくて3以上だったらcountNumの数字に1を足して、shakeCountLabelに表示
            if acc?.x != nil{
                self.countNum = self.countNum + 1
                self.countNum += 1
                print(self.countNum)
                self.shakeCountLabel.text = String(self.countNum)

            }
        })

//
//        self.motionManager.startAccelerometerUpdatesToQueue(OperationQueue()) {
//            (data, error) in
//            dispatch_async(dispatch_get_main_queue()) {
//                print(data)
//                self.updateAccelerationData(data.acceleration)
//
//            }
//        }
    }



//    ここの関数で直前の加速度と向きが変わっていればシェイクしたと判断
    func updatAccelerationData(data: CMAcceleration) {
      

        var isShaken = self.x != Int(data.x) || self.y != Int(data.y) || self.z != Int(data.z)
        if isShaken {
//             シェイクされたときの処理
        }

        self.x = Int(data.x)
        self.y = Int(data.y)
        self.z = Int(data.z)
    }
    
    @IBAction func reset(){
        countNum = 0
        shakeCountLabel.text = String(countNum)
    }

}
