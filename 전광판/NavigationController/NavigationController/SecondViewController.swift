//
//  SecondViewController.swift
//  NavigationController
//
//  Created by 송결 on 2022/03/18.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        self.navigationItem.title = "Test Navigation"
        self.navigationItem.rightBarButtonItem?.title = "qwe"
        self.navigationItem.backButtonTitle = "11111"
    }
}
