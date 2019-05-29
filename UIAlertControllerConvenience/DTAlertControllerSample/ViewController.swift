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

    @IBAction func dataLossAlertTapped(_ sender: Any) {
        let alert = UIAlertController(alertType: .dataLoss, defaultAction: {
            print("======= Data Loss Alert Default Action")
        })
        present(alert, animated: true, completion: nil)
    }

    @IBAction func noNetworkAlertTapped(_ sender: Any) {
        let alert = UIAlertController(alertType: .noNetwork, cancelAction: {
            print("======= No Alert Cancel Action")
        })
        present(alert, animated: true, completion: nil)
    }

    @IBAction func sessionExpiryAlertTapped(_ sender: Any) {
        let alert = UIAlertController(alertType: .sessionExpiry, defaultAction: {
            print("======= Session Expiry Alert Default Action")
        }, cancelAction: {
            print("======= Session Expiry Alert Cancel Action")
        })
        present(alert, animated: true, completion: nil)
    }

    @IBAction func taskCompletionAlert(_ sender: Any) {
        let alert = UIAlertController(alertType: .taskCompletion, cancelAction: {
            print("======= Task Completion Alert Cancel Action")
        })
        present(alert, animated: true, completion: nil)
    }
}

