//
//  UIApplication+Alert.swift
//  DTAlertControllerSample
//
//  Created by Darshan on 30/05/19.
//  Copyright © 2019 Darshan D T. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    /**
     Convenience Initialiser for UIAlertController
     - parameters:
         - alertType: Type of the alert you are looking to present.
         - onViewController: Presenter for the alert.
         - animated: Default to true.
         - completion: Alert's completion block.
         - userAction: Action for which you presented the alert for.
                       Generally the action for button on the right side of alert in Lefto for Right languages.
         - cancelAction: Action on pressing cancellation button.
     
     */

    func showAlert(ofType alertType: AlertType,
                   animated: Bool = true,
                   completion: (()-> Void)? = nil,
                   userAction: (()->Void)? = nil,
                   cancelAction: (()->Void)? = nil) {
        
        let alertController = UIAlertController(alertType: alertType,
                                                userAction: userAction,
                                                cancelAction: cancelAction)
        present(alertController,
                          animated: animated,
                          completion: completion)
    }
}
