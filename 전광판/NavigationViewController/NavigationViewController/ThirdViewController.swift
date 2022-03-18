//
//  ThirdViewController.swift
//  NavigationViewController
//
//  Created by 송결 on 2022/03/18.
//

import Foundation
import UIKit

class ThirdViewController: UIViewController {
    
    let testLabel = UILabel()
    let mainTextField = UITextField()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBasic()
        setLayout()
       
    }
    private func setBasic() {
        view.addSubview(testLabel)
        testLabel.translatesAutoresizingMaskIntoConstraints = false
        //mainLabel.center = view.center
        testLabel.backgroundColor = .label
        testLabel.textColor = .systemYellow
        testLabel.font = .boldSystemFont(ofSize: 25)
        testLabel.text = "BACK"
        testLabel.textAlignment = .center
        
    }
    private func setLayout() {
        NSLayoutConstraint.activate([
            testLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            testLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            testLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150),
            testLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
}
