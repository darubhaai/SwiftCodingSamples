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

    //Alert having userAction and completion action block
    func showDataLossAlert() {
        showAlert(ofType: .dataLoss, completion: {
            print("======== Data Loss Alert Successfully Presented")
        }, userAction: {
            print("======== Data Loss Alert Default Action Executed")
        })
    }

    func showNoNetworkAlert() {
        showAlert(ofType: .noNetwork, userAction: {
            print("======== No Network Alert User Action Executed")
        })
    }

    //Alert having userAction and Cancel action block
    func showSessionExpiryAlert() {
        showAlert(ofType: .sessionExpiry, userAction: {
            print("======== Session Expiry Alert User Action Executed")
        }, cancelAction : {
            print("======== Session Expiry Alert Cancel Action Executed")
        })
    }

    //Single Action Alert
    func showTaskCompletionAlert() {
        showAlert(ofType: .taskCompletion)
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

