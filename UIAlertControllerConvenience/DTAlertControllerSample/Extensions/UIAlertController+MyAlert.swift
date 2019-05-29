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
    
    // This constant is required to avoid presenting alert without any actions
    var defaultCancelbuttonTitle: String {
        return "OK"
    }

    /**
    Convenience Initialiser for UIAlertController
    - parameters:
        - alertType: Type of the alert you are looking to present.
        - defaultAction: Action for which you presented the alert for.
        - cancelAction: Action on pressing cancellation button.

    */

    convenience init(alertType: AlertType,
                     userAction: (() -> Void)? = nil,
                     cancelAction: (() -> Void)? = nil) {
        let alert = AlertFactory.alert(forType: alertType)
        self.init(title: alert.title,
                  message: alert.message,
                  preferredStyle: .alert)
        
        let cancelButtontitle = alert.cancelTitle ?? defaultCancelbuttonTitle
        let cancelAlertAction = UIAlertAction(title: cancelButtontitle,
                                              style: .cancel) { (action) in
                                                cancelAction?()
        }
        self.addAction(cancelAlertAction)
        
        if let defaultActionTitle = alert.actionTitle {
            let defaultAlertAction = UIAlertAction(title: defaultActionTitle,
                                                   style: .default) { (action) in
                                                    userAction?()
            }
            self.addAction(defaultAlertAction)
        }
    }
}
