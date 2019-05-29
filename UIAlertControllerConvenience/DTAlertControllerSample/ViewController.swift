//
//  ViewController.swift
//  DTAlertControllerSample
//
//  Created by Darshan D T on 28/05/19.
//  Copyright © 2019 Darshan D T. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func showDataLossAlert() {
        UIApplication.shared.showAlert(ofType: .dataLoss, onViewController: self, userAction: {
            print("======== Data Loss Alert Default Action Executed")
        })
    }

    func showNoNetworkAlert() {
        UIApplication.shared.showAlert(ofType: .noNetwork, onViewController: self, userAction: {
            print("======== No Network Alert Default Action Executed")
        })
    }

    func showSessionExpiryAlert() {
        UIApplication.shared.showAlert(ofType: .sessionExpiry, onViewController: self, userAction: {
            print("======== Session Expiry Alert Default Action Executed")
        }, cancelAction : {
            print("======== Session Expiry Alert Cancel Action Executed")
        })
    }

    //Single Action Alert
    func showTaskCompletionAlert() {
        UIApplication.shared.showAlert(ofType: .taskCompletion, onViewController: self)
    }

    // MARK: IB Actions
    @IBAction func dataLossAlertTapped(_ sender: Any) {
        showDataLossAlert()
    }

    @IBAction func noNetworkAlertTapped(_ sender: Any) {
        showNoNetworkAlert()
    }

    @IBAction func sessionExpiryAlertTapped(_ sender: Any) {
        showSessionExpiryAlert()
    }

    @IBAction func taskCompletionAlert(_ sender: Any) {
        showTaskCompletionAlert()
    }
}

