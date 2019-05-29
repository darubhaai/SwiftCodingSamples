//
//  AlertConstants.swift
//  DTAlertControllerSample
//
//  Created by Darshan D T on 28/05/19.
//  Copyright © 2019 Darshan D T. All rights reserved.
//

import Foundation

enum AlertType {
    case dataLoss
    case sessionExpiry
    case noNetwork
    case taskCompletion
}

struct DataLossAlert: AlertProtocol {
    var title: String? { return "Would you like to continue?" }
    var message: String? { return "Your current will be lost."}
    var actionTitle: String? { return "Proceed" }
    var cancelTitle: String? { return "Cancel" }
}

struct SessionExpiryAlert: AlertProtocol {
    var title: String? { return "Please login to Continue" }
    var message: String? { return "Your previous session is expired"}
    var actionTitle: String? { return "Login" }
    var cancelTitle: String? { return "Cancel" }
}

struct NoNetworkAlert: AlertProtocol {
    var title: String? { return "Network Connection Lost" }
    var message: String? { return "Could not connect to Internet. Please check your network settings"}
    var actionTitle: String? { return "Settings" }
    var cancelTitle: String? { return "Cancel" }
}

struct TaskCompletionAlert: AlertProtocol {
    var title: String? { return "Task Completed" }
    var message: String? { return "Request task is successfully completed"}
    var actionTitle: String? { return nil }
    var cancelTitle: String? { return nil }
}
