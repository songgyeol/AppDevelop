//
//  SecondViewController.swift
//  NavigationViewController
//
//  Created by 송결 on 2022/03/18.
//

import UIKit

class SecondViewController: UIViewController {
    
    let mainLabel = UILabel()
    
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    //MARK: - UI
    private func setUI() {
        confiureItem()
        setBasic()
        setLayout()
    }
    
    //MARK: - SetBasic
    private func setBasic() {
        view.addSubview(mainLabel)
        view.backgroundColor = .white
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        mainLabel.backgroundColor = .clear
        mainLabel.textColor = .systemRed
        mainLabel.font = .boldSystemFont(ofSize: 25)
        mainLabel.text = "NAMJEONG CAMPUS"
        mainLabel.textAlignment = .center
    }
    //MARK: - ThirdViewController ButtonTapped And Set
    private func confiureItem() {
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapButton))
    }
    @objc func didTapButton() {
        let vc = ThirdViewController()
        vc.title = "설 정"
        vc.view.backgroundColor = .white
        navigationController?.pushViewController(vc, animated: true)
    }
    //MARK: - SetLayOut
    private func setLayout() {
        NSLayoutConstraint.activate([
            mainLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            mainLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            mainLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150),
            mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}





