//
//  ViewController.swift
//  ChatApp
//
//  Created by Ali Ebrahimi Pourasad on 16.10.17.
//  Copyright © 2017 Ali Ebrahimi Pourasad. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
    }

    func handleLogout() {
        let loginController = LoginController()
        present(loginController, animated: true, completion: nil)
    }

}

