//
//  UIAlertController.swift
//  MySchedule
//
//  Created by Rita on 07.10.2021.
//

import UIKit

extension UIAlertController {
    
    func negativeWithConstraint() {
        for subView in self.view.subviews {
            for constraints in subView.constraints where constraints.debugDescription.contains("with == -16") {
                subView.removeConstraint(constraints)
            }
        }
    }
    
}
