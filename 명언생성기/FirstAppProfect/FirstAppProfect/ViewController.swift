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
    
    struct MainText {
        let contents: String
        let name: String
    }
    
    let quotes = [
        MainText(contents: "“꿈을 이루고자 하는 용기만 있다면 모든 꿈을 이룰 수 있다.”", name: "<월트 디즈니>"),
        MainText(contents: "“웃음이 없는 하루는 버린 하루다.”", name: "<찰리 채플린>"),
        MainText(contents: "“무슨 일을 하기 전에는 그 일에 대해 기대를 가져야 한다.”", name: "<농구선수 마이클 조던>"),
        MainText(contents: "“조금도 도전하지 않으려고 하는 것이 인생에서 가장 위험한 일이다”", name: "<오프라 윈프리>"),
        MainText(contents: "“새로운 일에 도전하다 보면 가끔 실수를 저지를 수 있다. 자신의 실수를 빨리 인정하고 다른 시도에 집중하는 것이 최선이다.”", name: "<스티브 잡스>")
        
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        
    }
    
    func setUI() {
        setBasic()
        setLayout()
    }
    
    
    func setBasic() {
        [titleLabel,mainLabel,mainName,mainButton].forEach {
            view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
            
        }
        titleLabel.clipsToBounds = true
        titleLabel.text = "명언생성기"
        titleLabel.backgroundColor = UIColor(red:0.76, green:0.87, blue:0.68, alpha:1.0)
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.systemFont(ofSize: 30)
        titleLabel.textColor = UIColor(red:0.02, green:0.27, blue:0.21, alpha:1.0)
        titleLabel.layer.cornerRadius = 10
        
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
    @objc func mainBTTapped(_ uibutton: Any) {
        //        let randomQuote = Int.random(in:0...4)
        if let quote = quotes.randomElement() {
            self.mainLabel.text = quote.contents
            self.mainName.text = quote.name
            
        }
        
        
        
    }
}
