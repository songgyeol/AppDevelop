//
//  ViewController.swift
//  LEDStoryBoard
//
//  Created by 송결 on 2022/03/18.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//메인 및 백버튼 타이틀로 됨        title = ""
        view.backgroundColor = .black
        
        let mainLabel =  UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
        view.addSubview(mainLabel)
        mainLabel.center = view.center
        mainLabel.backgroundColor = .black
        mainLabel.textColor = .systemRed
        mainLabel.font = .boldSystemFont(ofSize: 25)
        mainLabel.text = "NAMJEON CAMPUS"
        mainLabel.textAlignment = .center
        
        
        //navigationController?.navigationBar.tintColor = .label (레이블색깔로 맞추는 코드)
        
        configureItems()
    }
    
    private func configureItems() {
        
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapButton))
         
        
//        self.navigationItem.leftBarButtonItem = UIBarButtonItem(
//            image: UIImage(systemName: "gear"),
//            style: .done,
//            target: self,
//            action: nil)
        
        
//        let customView = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
//        customView.text = "Hello"
//        customView.textAlignment = .center
//        customView.backgroundColor = .orange
//        customView.layer.cornerRadius = 8
//        customView.layer.masksToBounds = true
//        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: customView)
        
        
    }
    
    @objc func didTapButton() {
        let vc = UIViewController()
        vc.title = "설 정"
        vc.view.backgroundColor = .white
        
//        vc.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "next", style: .done, target: self, action: nil)
        
       navigationController?.pushViewController(vc, animated: true)
    }
    
}

