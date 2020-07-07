//
//  AlarmSchedulerDelegate.swift
//  AlarmApp
//
//  Created by 犀川輝也 on 2020/05/17.
//  Copyright © 2020 net.geeksalon. All rights reserved.
//

import Foundation
import UIKit

protocol AlarmSchedulerDelegate {
    func setNotificationWithDate(_ date: Date, onWeekdaysForNotify:[Int], snoozeEnabled: Bool, onSnooze:Bool, soundName: String, index: Int)
    //helper
    func setNotificationForSnooze(snoozeMinute: Int, soundName: String, index: Int)
    func setupNotificationSettings() -> UIUserNotificationSettings
    func reSchedule()
    func checkNotification()
}

