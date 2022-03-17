//
//  ViewController.swift
//  SecondApp2
//
//  Created by 송결 on 2022/03/17.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemPink
        self.navigationController?.navigationBar.tintColor = .green

    }
    // Push
    func pushView() {
       let vc = SubViewController()
       
       self.navigationController?.pushViewController(vc, animated: true)
     }
   
   
}

