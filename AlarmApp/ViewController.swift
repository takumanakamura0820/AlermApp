//
//  ViewController.swift
//  AlarmApp
//
//  Created by 犀川輝也 on 2020/03/25.
//  Copyright © 2020 net.geeksalon. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var alarmArray = [String]()
    
    @IBOutlet var alarmTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        alarmTableView.dataSource = self
        alarmTableView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        loadAlarm()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alarmArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AlarmCell")!
        cell.textLabel?.text = alarmArray[indexPath.row]
        return cell
    }
    
    func loadAlarm() {
        let ud = UserDefaults.standard
        if ud.array(forKey: "alarmArray") != nil{
            alarmArray = ud.array(forKey: "alarmArray") as! [String]
            alarmTableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "toDetail", sender: nil)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDetail" {
            let detailViewController = segue.destination as! DetailViewController
            let selectedIndexPath = alarmTableView.indexPathForSelectedRow!
            detailViewController.selectedAlarm = alarmArray[selectedIndexPath.row]
            detailViewController.selectedRow = selectedIndexPath.row
        }
        
    }
    
    
}



