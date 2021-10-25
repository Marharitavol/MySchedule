//
//  ScheduleModel.swift
//  MySchedule
//
//  Created by Rita on 11.10.2021.
//

import RealmSwift

class ScheduleModel: Object {
    
    @objc var scheduleDate: Date?
    @objc var scheduleTime: Date?
    @objc var scheduleName: String = "Unknown"
    @objc var scheduleType: String = "Unknown"
    @objc var scheduleBuilding: String = "Unknown"
    @objc var scheduleAudience: String = "Unknown"
    @objc var scheduleTeacher: String = "NAME Lastname"
    @objc var scheduleColor: String = "5787FF"
    @objc var scheduleRepeat: Bool = true
    @objc var scheduleWeekday: Int = 1
    
}
