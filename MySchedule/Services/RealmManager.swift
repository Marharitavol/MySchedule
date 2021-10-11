//
//  RealmManager.swift
//  MySchedule
//
//  Created by Rita on 11.10.2021.
//

import RealmSwift
class RealmManager {
    
    static let shared = RealmManager()
    
    private init() {    }
    
    let localRealm = try! Realm()
    
    func saveScheduleModel(model: ScheduleModel) {
        try! localRealm.write {
            localRealm.add(model)
        }
    }
}
