//
//  SecondViewController.swift
//  NavigationViewController
//
//  Created by 송결 on 2022/03/18.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    let mainLabel = UILabel()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    
    private func setUI() {
        confiureItem()
        setBasic()
        setLayout()
    }
    private func setBasic() {
        
        view.addSubview(mainLabel)
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        //mainLabel.center = view.center
        mainLabel.backgroundColor = .label
        mainLabel.textColor = .systemRed
        mainLabel.font = .boldSystemFont(ofSize: 25)
        mainLabel.text = "NAMJEON CAMPUS"
        mainLabel.textAlignment = .center
    }
    private func confiureItem() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapButton))
        
    }
    
    @objc func didTapButton() {
        let vc = ThirdViewController()
        vc.title = "설 정"
        vc.view.backgroundColor = .white
        navigationController?.pushViewController(vc, animated: true)
    }
    
    private func setLayout() {
        NSLayoutConstraint.activate([
            mainLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            mainLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            mainLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150),
            mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}





