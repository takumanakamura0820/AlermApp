//
//  DemoViewController.swift
//  AlarmApp
//
//  Created by 犀川輝也 on 2020/05/12.
//  Copyright © 2020 net.geeksalon. All rights reserved.
//
import UIKit
import CoreMotion
 
class DemoViewController: UIViewController {
    
    var num: Int = 0
    
    var number: Int = 100

    @IBOutlet var label:UILabel!
    
    // MotionManager
       let motionManager = CMMotionManager()
    
       // 3 axes
       @IBOutlet var accelerometerX: UILabel!
       @IBOutlet var accelerometerY: UILabel!
       @IBOutlet var accelerometerZ: UILabel!
    
    
    override func viewDidLoad() {
           
           super.viewDidLoad()
           
           label.text = String(number)

           if motionManager.isAccelerometerAvailable {
               // intervalの設定 [sec]
               motionManager.accelerometerUpdateInterval = 0.001
    
               // センサー値の取得開始
               motionManager.startAccelerometerUpdates(
                   to: OperationQueue.current!,
                   withHandler: {(accelData: CMAccelerometerData?, errorOC: Error?) in
                       self.outputAccelData(acceleration: accelData!.acceleration)
                    self.num = self.num + Int(accelData!.acceleration.x)
                    
               })
    
           }
       }
    
        
        
    
    
    
    @IBAction func push(){
        
        number = number - 1
        label.text = String(number)
        
    }
 
 
    func outputAccelData(acceleration: CMAcceleration){
        // 加速度センサー [G]
        accelerometerX.text = String(format: "%06f", acceleration.x)
        accelerometerY.text = String(format: "%06f", acceleration.y)
        accelerometerZ.text = String(format: "%06f", acceleration.z)
    }
 
    // センサー取得を止める場合
    func stopAccelerometer(){
        if (motionManager.isAccelerometerActive) {
            motionManager.stopAccelerometerUpdates()
        }
        
    }
    
}
