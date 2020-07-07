//
//  SegueInfo.swift
//  AlarmApp
//
//  Created by 犀川輝也 on 2020/05/17.
//  Copyright © 2020 net.geeksalon. All rights reserved.
//

import Foundation

struct SegueInfo {
    var curCellIndex: Int
    var isEditMode: Bool
    var label: String
    var mediaLabel: String
    var mediaID: String
    var repeatWeekdays: [Int]
    var enabled: Bool
    var snoozeEnabled: Bool
}
