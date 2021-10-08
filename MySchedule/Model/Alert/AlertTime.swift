//
//  AlertTime.swift
//  MySchedule
//
//  Created by Rita on 06.10.2021.
//

import UIKit

extension UIViewController {
    func alertTime(label: UILabel, completionHandler: @escaping (NSDate) -> Void) {
        let alert = UIAlertController(title: "", message: nil, preferredStyle: .actionSheet)
        
        let datePicker = UIDatePicker()
        datePicker.datePickerMode = .time
        datePicker.preferredDatePickerStyle = .wheels
        datePicker.locale = NSLocale(localeIdentifier: "Ru_ru") as Locale
        
        alert.view.addSubview(datePicker)
        
        let ok = UIAlertAction(title: "OK", style: .default) { (action) in
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "HH.mm"
            let timeString = dateFormatter.string(from: datePicker.date)
            let timeSchedule = datePicker.date as NSDate
            completionHandler(timeSchedule)
            
            label.text = timeString
            
            }
        
        let cancel = UIAlertAction(title: "Cancel", style: .default, handler: nil)
        alert.addAction(ok)
        alert.addAction(cancel)
        
        alert.negativeWithConstraint()
        
        alert.view.heightAnchor.constraint(equalToConstant: 320).isActive = true
        datePicker.widthAnchor.constraint(equalTo: alert.view.widthAnchor).isActive = true
        datePicker.heightAnchor.constraint(equalToConstant: 160).isActive = true
        datePicker.topAnchor.constraint(equalTo: alert.view.topAnchor, constant: 20).isActive = true
        
        
        present(alert, animated: true, completion: nil)
        }
    }
