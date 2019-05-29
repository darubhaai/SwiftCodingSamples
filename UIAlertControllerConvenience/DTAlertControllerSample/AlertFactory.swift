//
//  AlertFactory.swift
//  DTAlertControllerSample
//
//  Created by Darshan D T on 28/05/19.
//  Copyright © 2019 Darshan D T. All rights reserved.
//

import Foundation

class AlertFactory {
    static func alert(forType alertType: AlertType) -> AlertProtocol {
        var alert: AlertProtocol
        switch alertType {
        case .dataLoss: alert = DataLossAlert()
        case .sessionExpiry: alert = SessionExpiryAlert()
        case .noNetwork: alert = NoNetworkAlert()
        case .taskCompletion: alert = TaskCompletionAlert()
        }
        return alert
    }
}
