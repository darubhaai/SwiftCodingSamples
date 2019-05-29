//
//  AlertProtocols.swift
//  DTAlertControllerSample
//
//  Created by Darshan D T on 28/05/19.
//  Copyright © 2019 Darshan D T. All rights reserved.
//

import Foundation
import UIKit

protocol AlertContentProtocol {
    var title: String? { get }
    var message: String? { get }
    var defaultButtonTitle: String? { get }
    var cancelButtonTitle: String? { get }
}
