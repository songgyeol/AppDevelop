//
//  ThirdViewController.swift
//  NavigationViewController
//
//  Created by 송결 on 2022/03/18.
//

import Foundation
import UIKit

class ThirdViewController: UIViewController {
    
    let titleLabel = UILabel()
    var mainTextField = UITextField()
    
    let colorLabel = UILabel()
    let backgrouncolorLabel = UILabel()
    
    let redButton = UIButton()
    let orangeButton = UIButton()
    let yellowButton = UIButton()
    
    let pinkBGButton = UIButton()
    let grayBGButton = UIButton()
    let blackBGButton = UIButton()
    
    let saveButton = UIButton()
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
       setUI()
       
    }
    //MARK: - UI
    private func setUI() {
        setBasic()
        setLayout()
        
    }
    
    //MARK: - Attribute
    private func setBasic() {
        [titleLabel,mainTextField,colorLabel,backgrouncolorLabel,redButton,orangeButton,yellowButton,
         pinkBGButton,grayBGButton,blackBGButton,saveButton].forEach {
            view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.clipsToBounds = true
        }
        //Title
        titleLabel.textColor = .black
        titleLabel.font = .systemFont(ofSize: 20)
        titleLabel.text = "전광판 표시할 글자"
        titleLabel.textAlignment = .center
        //TextField
        //mainTextField.frame = .init(x: 0, y: 0, width: 200, height: 30)
        mainTextField.placeholder = "내용을 입력해주세요."
        mainTextField.textAlignment = .center
        mainTextField.layer.cornerRadius = 5
        mainTextField.layer.borderWidth = 1
        mainTextField.layer.borderColor = UIColor.gray.cgColor.copy(alpha: 0.2)
        //ColorLabel
        colorLabel.textColor = .black
        colorLabel.font = .systemFont(ofSize: 20)
        colorLabel.text = "텍스트 색상 설정"
        colorLabel.textAlignment = .center
        //ButtonColor
        redButton.backgroundColor = .red
        redButton.layer.cornerRadius = 25 // 버튼크긱 높이,폭이 50이면 25로 맞춰주면 둥글게 설정 가능
        orangeButton.backgroundColor = .orange
        orangeButton.layer.cornerRadius = 25
        yellowButton.backgroundColor = .yellow
        yellowButton.layer.cornerRadius = 25
        //BackGroundColorLabel
        backgrouncolorLabel.textColor = .black
        backgrouncolorLabel.font = .systemFont(ofSize: 20)
        backgrouncolorLabel.text = "배경 색상 설정"
        backgrouncolorLabel.textAlignment = .center
        //BackGroundColor
        pinkBGButton.backgroundColor = .systemPink
        grayBGButton.backgroundColor = .gray
        blackBGButton.backgroundColor = .black
        pinkBGButton.layer.cornerRadius = 25
        grayBGButton.layer.cornerRadius = 25
        blackBGButton.layer.cornerRadius = 25
        
        saveButton.setTitle("저 장", for: .normal)
        saveButton.frame.size = .init(width: 40, height: 40)
        saveButton.setTitleColor(.systemBlue, for: .normal)
    }
    //MARK: - SetLayOut
    private func setLayout() {
        NSLayoutConstraint.activate([
            //Title
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -200),
            //TextField
            mainTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            mainTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            mainTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            mainTextField.heightAnchor.constraint(equalToConstant: 40),
            
            //ColorLabel
            colorLabel.topAnchor.constraint(equalTo: mainTextField.bottomAnchor, constant: 40),
            colorLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            colorLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -200),
            //RedButton
            redButton.topAnchor.constraint(equalTo: colorLabel.bottomAnchor, constant: 20),
            redButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            redButton.heightAnchor.constraint(equalToConstant: 50),
            redButton.widthAnchor.constraint(equalToConstant: 50),
            //OrangeButton
            orangeButton.topAnchor.constraint(equalTo: colorLabel.bottomAnchor, constant: 20),
            orangeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 120),
            orangeButton.heightAnchor.constraint(equalToConstant: 50),
            orangeButton.widthAnchor.constraint(equalToConstant: 50),
            //YellowButton
            yellowButton.topAnchor.constraint(equalTo: colorLabel.bottomAnchor, constant: 20),
            yellowButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
            yellowButton.heightAnchor.constraint(equalToConstant: 50),
            yellowButton.widthAnchor.constraint(equalToConstant: 50),
            
            //BackGroundColorLabel
            backgrouncolorLabel.topAnchor.constraint(equalTo: redButton.bottomAnchor, constant: 40),
            backgrouncolorLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            backgrouncolorLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -200),
            //WhiteBG
            pinkBGButton.topAnchor.constraint(equalTo: backgrouncolorLabel.bottomAnchor, constant: 20),
            pinkBGButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            pinkBGButton.heightAnchor.constraint(equalToConstant: 50),
            pinkBGButton.widthAnchor.constraint(equalToConstant: 50),
            //GrayBG
            grayBGButton.topAnchor.constraint(equalTo: backgrouncolorLabel.bottomAnchor, constant: 20),
            grayBGButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 120),
            grayBGButton.heightAnchor.constraint(equalToConstant: 50),
            grayBGButton.widthAnchor.constraint(equalToConstant: 50),
            //BlackBG
            blackBGButton.topAnchor.constraint(equalTo: backgrouncolorLabel.bottomAnchor, constant: 20),
            blackBGButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
            blackBGButton.heightAnchor.constraint(equalToConstant: 50),
            blackBGButton.widthAnchor.constraint(equalToConstant: 50),
            //SaveButton
            saveButton.topAnchor.constraint(equalTo: pinkBGButton.bottomAnchor, constant: 70),
            saveButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            saveButton.heightAnchor.constraint(equalToConstant: 50),
            saveButton.widthAnchor.constraint(equalToConstant: 70)
            
        ])
    }
    
}
