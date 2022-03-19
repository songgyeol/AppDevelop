//
//  ViewController.swift
//  Delegate
//
//  Created by 송결 on 2022/03/19.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        navigationItem.title = "Home"
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 40))
        view.addSubview(button)
        button.setTitle("Push Scond Controller", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }

    @objc func buttonTapped() {
        let secondController = ScondViewController()
        navigationController?.pushViewController(secondController, animated: true)
    }

}


class ScondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        navigationItem.title = "Scond"
    }


}
