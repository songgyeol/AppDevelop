//
//  ViewController.swift
//  NavigationController
//
//  Created by 송결 on 2022/03/18.
//

import UIKit

class ViewController: UIViewController {
    
    let test = UILabel()
    let netxBT = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.navigationItem.title = "Test Navigation"
        self.navigationItem.rightBarButtonItem?.title = "qwe"
        self.navigationItem.backButtonTitle = "11111"
        
    }
    func setUI() {
        setLayout()
    }
    
    func setLayout() {
        
        netxBT.translatesAutoresizingMaskIntoConstraints = false
        netxBT.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        netxBT.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    func nextBT(_ sender: Any) {
        let vc = SecondViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

