//
//  WishViewController.swift
//  SecondApp2
//
//  Created by 송결 on 2022/03/17.
//

import Foundation
import UIKit

final class SubViewController: UIViewController {
    
    let mainLabel = UILabel()
    let setButton = UIBarItem()
    let backButton = UIBarButtonItem()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setUI()
    }
}




// MARK: - UI
extension SubViewController {
    private func setUI() {
        setTitle()
        setLayout()
    }
    
    
    // Pop
    func popView() {
        // let mainvc = MainViewController()
        self.navigationController?.popViewController( animated: true)
    }
    
    func setTitle() {
        [mainLabel].forEach {
            view.addSubview($0)
            //$0.translatesAutoresizingMaskIntoConstraints = false
            $0.text = "NAMJEONG CAMPUS"
            $0.backgroundColor = .gray
            $0.textAlignment = .center
            $0.textColor = .white //UIColor(red:0.64, green:0.26, blue:0.24, alpha:1.0)
            $0.numberOfLines = 8
            $0.font = UIFont.boldSystemFont(ofSize: 20)
            
        }
        
        //    func mainText() {
        //        mainLabel.text = "aaa"
        //        mainLabel.backgroundColor = .white
        //    }
    }
    
    func setLayout() {
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainLabel.heightAnchor.constraint(equalToConstant: 100),
            mainLabel.widthAnchor.constraint(equalToConstant: 200),
            mainLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150)
            
            
        ])
        
    }
   
    
}


