//
//  DetailViewController.swift
//  AlarmApp
//
//  Created by 犀川輝也 on 2020/04/01.
//  Copyright © 2020 net.geeksalon. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var selectedRow: Int!
    
    var selectedAlarm: String!
    
    @IBOutlet var alarmTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        alarmTextView.text = selectedAlarm
    }
    
    @IBAction func deletAlarm() {
        let ud = UserDefaults.standard
        if ud.array(forKey: "alarmArray") != nil{
            var saveAlaryArray = ud.array(forKey: "alarmArray") as! [String]
            saveAlaryArray.remove(at: selectedRow)
            ud.set(saveAlaryArray, forKey: "alarmArray")
            ud.synchronize()
            self.navigationController?.popViewController(animated: true)
        }
        
    }
    
}
