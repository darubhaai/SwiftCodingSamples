//
//  AlertConstants.swift
//  DTAlertControllerSample
//
//  Created by Darshan D T on 28/05/19.
//  Copyright © 2019 Darshan D T. All rights reserved.
//

import Foundation

enum MyAlertType {
    case dataLoss
    case sessionExpiry
    case noNetwork
    case taskCompletion
}

struct DataLossAlert: AlertContentProtocol {
    var title: String? { return "Would you like to continue?" }
    var message: String? { return "Your current will be lost."}
    var defaultButtonTitle: String? { return "Proceed" }
    var cancelButtonTitle: String? { return "Cancel" }
}

struct SessionExpiryAlert: AlertContentProtocol {
    var title: String? { return "Please login to Continue" }
    var message: String? { return "Your previous session is expired"}
    var defaultButtonTitle: String? { return "Login" }
    var cancelButtonTitle: String? { return "Cancel" }
}

struct NoNetworkAlert: AlertContentProtocol {
    var title: String? { return "Network Connection Lost" }
    var message: String? { return "Please Go to Settings->Networks to check your network status"}
    var defaultButtonTitle: String? { return "Settings" }
    var cancelButtonTitle: String? { return "Cancel" }
}

struct TaskCompletionAlert: AlertContentProtocol {
    var title: String? { return "Task Completed" }
    var message: String? { return "Request task is successfully completed"}
    var defaultButtonTitle: String? { return nil }
    var cancelButtonTitle: String? { return "OK" }
}
