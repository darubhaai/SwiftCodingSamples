//
//  AlertProtocols.swift
//  DTAlertControllerSample
//
//  Created by Darshan D T on 28/05/19.
//  Copyright © 2019 Darshan D T. All rights reserved.
//

import Foundation
import UIKit

protocol AlertProtocol {
    var title: String? { get }
    var message: String? { get }
    var actionTitle: String? { get }
    var cancelTitle: String? { get }
}
