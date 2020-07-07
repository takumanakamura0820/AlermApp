//
//  Persistable.swift
//  AlarmApp
//
//  Created by 犀川輝也 on 2020/05/17.
//  Copyright © 2020 net.geeksalon. All rights reserved.
//

import Foundation

protocol Persistable{
    var ud: UserDefaults {get}
    var persistKey : String {get}
    func persist()
    func unpersist()
}
