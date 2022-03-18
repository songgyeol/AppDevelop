//
//  ViewController.swift
//  FirstAppProfect
//
//  Created by 송결 on 2022/03/15.
//

import UIKit

class ViewController: UIViewController {
    
    let titleLabel = UILabel()
    let mainLabel = UILabel()
    let mainName = UILabel()
    let mainButton = UIButton()
    
    var quote = quotes
    
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        
    }
    //MARK: - SetUI
    func setUI() {
        setBasic()
        setLayout()
    }
    
    //MARK: - SetBasic
    func setBasic() {
        [titleLabel,mainLabel,mainName,mainButton].forEach {
            view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
            
        }
        titleLabel.text = "명언생성기"
        titleLabel.backgroundColor = UIColor(red:0.76, green:0.87, blue:0.68, alpha:1.0)
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.systemFont(ofSize: 30)
        titleLabel.textColor = UIColor(red:0.02, green:0.27, blue:0.21, alpha:1.0)
        titleLabel.layer.cornerRadius = 10
        titleLabel.clipsToBounds = true //cornerRadius안될 때
        
        mainLabel.text = ""
        mainLabel.backgroundColor = UIColor(red:0.76, green:0.69, blue:0.57, alpha:1.0)
        mainLabel.textAlignment = .center
        mainLabel.textColor = UIColor(red:0.64, green:0.26, blue:0.24, alpha:1.0)
        mainLabel.numberOfLines = 8
        mainLabel.font = UIFont.boldSystemFont(ofSize: 20)
        //        MainLabel.font = UIFont.italicSystemFont(ofSize: UIFont.labelFontSize)
        
        
        mainName.text = ""
        mainName.backgroundColor = UIColor(red:0.76, green:0.69, blue:0.57, alpha:1.0)
        mainName.textAlignment = .center
        mainName.textColor = UIColor(red:0.64, green:0.26, blue:0.24, alpha:1.0)
        
        mainButton.setTitle("명언보기", for: .normal)
        mainButton.backgroundColor = UIColor.gray
        mainButton.layer.cornerRadius = 10
        mainButton.sizeToFit()
        mainButton.tintColor = .clear
        mainButton.addTarget(self, action: #selector(mainBTTapped(_:)), for: .touchUpInside)
    }
    //MARK: - SetLayOut
    func setLayout() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 50),
            titleLabel.widthAnchor.constraint(equalToConstant: 200),
            
            mainLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 70),
            mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainLabel.heightAnchor.constraint(equalToConstant: 370),
            mainLabel.widthAnchor.constraint(equalToConstant: 300),
            
            mainName.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 0),
            mainName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainName.heightAnchor.constraint(equalToConstant: 30),
            mainName.widthAnchor.constraint(equalToConstant: 300),
            
            mainButton.topAnchor.constraint(equalTo: mainName.bottomAnchor, constant: 30),
            mainButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainButton.heightAnchor.constraint(equalToConstant: 50),
            mainButton.widthAnchor.constraint(equalToConstant: 70)
        ])
    }
    //MARK: - MainButtonTapped
    @objc func mainBTTapped(_ uibutton: Any) {
        //        let randomQuote = Int.random(in:0...4)
        if let quote = quotes.randomElement() {
            self.mainLabel.text = quote.contents
            self.mainName.text = quote.name
            
        }
    }
}
