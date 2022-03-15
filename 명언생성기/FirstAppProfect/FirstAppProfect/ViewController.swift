//
//  ViewController.swift
//  FirstAppProfect
//
//  Created by 송결 on 2022/03/15.
//

import UIKit

class ViewController: UIViewController {
    
    let TitleLabel = UILabel()
    let MainLabel = UILabel()
    let MainName = UILabel()
    let MainButton = UIButton()
    
    struct MainText {
        let contents: String
        let name: String
    }
    
    let quotes = [
        MainText(contents: "“꿈을 이루고자 하는 용기만 있다면 \n모든 꿈을 이룰 수 있다.”", name: "<월트 디즈니>"),
        MainText(contents: "“웃음이 없는 하루는 버린 하루다.”", name: "<찰리 채플린>"),
        MainText(contents: "“무슨 일을 하기 전에는\n 그 일에 대해 기대를 가져야 한다.”", name: "<농구선수 마이클 조던>"),
        MainText(contents: "“조금도 도전하지 않으려고 하는 것이\n 인생에서 가장 위험한 일이다”", name: "<오프라 윈프리>"),
        MainText(contents: "“새로운 일에 도전하다 보면 가끔 실수를\n 저지를 수 있다.\n 자신의 실수를 빨리 인정하고 다른 시도에\n 집중하는 것이 최선이다.”", name: "<스티브 잡스>")
        
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
        [TitleLabel,MainLabel,MainName,MainButton].forEach {
            view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
            
        }
        TitleLabel.clipsToBounds = true
        TitleLabel.text = "명언생성기"
        TitleLabel.backgroundColor = UIColor(red:0.76, green:0.87, blue:0.68, alpha:1.0)
        TitleLabel.textAlignment = .center
        TitleLabel.font = UIFont.systemFont(ofSize: 30)
        TitleLabel.textColor = UIColor(red:0.02, green:0.27, blue:0.21, alpha:1.0)
        TitleLabel.layer.cornerRadius = 10
        
        MainLabel.text = ""
        MainLabel.backgroundColor = UIColor(red:0.76, green:0.69, blue:0.57, alpha:1.0)
        MainLabel.textAlignment = .center
        MainLabel.textColor = UIColor(red:0.64, green:0.26, blue:0.24, alpha:1.0)
        MainLabel.numberOfLines = 8
        MainLabel.font = UIFont.boldSystemFont(ofSize: 20)
//        MainLabel.font = UIFont.italicSystemFont(ofSize: UIFont.labelFontSize)

        
        MainName.text = ""
        MainName.backgroundColor = UIColor(red:0.76, green:0.69, blue:0.57, alpha:1.0)
        MainName.textAlignment = .center
        MainName.textColor = UIColor(red:0.64, green:0.26, blue:0.24, alpha:1.0)
        
        MainButton.setTitle("명언보기", for: .normal)
        MainButton.backgroundColor = UIColor.gray
        MainButton.layer.cornerRadius = 10
        MainButton.sizeToFit()
        MainButton.tintColor = .clear
        MainButton.addTarget(self, action: #selector(mainBTTapped(_:)), for: .touchUpInside)
    }
    
    func setLayout() {
        NSLayoutConstraint.activate([
            TitleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            TitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            TitleLabel.heightAnchor.constraint(equalToConstant: 50),
            TitleLabel.widthAnchor.constraint(equalToConstant: 200),
            
            MainLabel.topAnchor.constraint(equalTo: TitleLabel.bottomAnchor, constant: 70),
            MainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            MainLabel.heightAnchor.constraint(equalToConstant: 370),
            MainLabel.widthAnchor.constraint(equalToConstant: 300),
            
            MainName.topAnchor.constraint(equalTo: MainLabel.bottomAnchor, constant: 0),
            MainName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            MainName.heightAnchor.constraint(equalToConstant: 30),
            MainName.widthAnchor.constraint(equalToConstant: 300),
            
            MainButton.topAnchor.constraint(equalTo: MainName.bottomAnchor, constant: 30),
            MainButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            MainButton.heightAnchor.constraint(equalToConstant: 50),
            MainButton.widthAnchor.constraint(equalToConstant: 70)
        ])
    }
    @objc func mainBTTapped(_ uibutton: Any) {
        let randomQuote = Int.random(in:0...4)
        let quote = quotes[randomQuote]
        self.MainLabel.text = quote.contents
        self.MainName.text = quote.name
        
    }
    
    
    
}
