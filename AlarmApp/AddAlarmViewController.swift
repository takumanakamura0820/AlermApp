//
//  AddAlarmViewController.swift
//  AlarmApp
//
//  Created by 犀川輝也 on 2020/03/25.
//  Copyright © 2020 net.geeksalon. All rights reserved.
//

import UIKit

class AddAlarmViewController: UIViewController {
    
    @IBOutlet var alarmTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func save(){
        let inputText = alarmTextView.text
        let ud = UserDefaults.standard
        if ud.array(forKey: "alarmArray") != nil {
            var saveAlarmArray = ud.array(forKey: "alarmArray") as![String]
            
            if inputText != nil {
                saveAlarmArray.append(inputText!)
            } else {
                print("何も入力されていません")
            }
            ud.set(saveAlarmArray, forKey: "alarmArray")
        } else {
            var newAlarmArray = [String]()
            
            if inputText != nil {
                newAlarmArray.append(inputText!)
            }else{
                print("何も入力されていません")
            }
            ud.set(newAlarmArray, forKey: "alarmArray")
        }
        ud.synchronize()
        self.dismiss(animated: true, completion: nil)
    }
    
}
