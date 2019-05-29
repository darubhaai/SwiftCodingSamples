//
//  UIAlertController+MyAlert.swift
//  DTAlertControllerSample
//
//  Created by Darshan D T on 28/05/19.
//  Copyright © 2019 Darshan D T. All rights reserved.
//

import Foundation
import UIKit

extension UIAlertController {
    
    var defaultCancelbuttonTitle: String {
        return "Cancel"
    }
    //Default Action is
    convenience init(alertType: MyAlertType,
                     defaultAction: (() -> Void)? = nil,
                     cancelAction: (() -> Void)? = nil) {
        let alert = AlertFactory.alert(forType: alertType)
        self.init(title: alert.title,
                  message: alert.message,
                  preferredStyle: .alert)

        let cancelButtontitle = alert.cancelButtonTitle ?? defaultCancelbuttonTitle
        let cancelAlertAction = UIAlertAction(title: cancelButtontitle,
                                              style: .cancel) { (action) in
            cancelAction?()
        }
        self.addAction(cancelAlertAction)

        if let defaultActionTitle = alert.defaultButtonTitle {
            let defaultAlertAction = UIAlertAction(title: defaultActionTitle,
                                                   style: .default) { (action) in
                defaultAction?()
            }
            self.addAction(defaultAlertAction)
        }
    }
}

