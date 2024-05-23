//
//  ViewController.swift
//  UnitCreator
//
//  Created by bj on 5/13/24.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let barrackButton = UIButton(type: .custom)
        barrackButton.backgroundColor = .lightGray
        barrackButton.setTitle("배럭", for: .normal)
        barrackButton.frame = .init(x: 150, y: 200, width: 100, height: 100)
        barrackButton.addTarget(self, action: #selector(click), for: .touchUpInside)
        view.addSubview(barrackButton)
    }
    
    @objc func click() {
        let swiftUIController = UIHostingController(rootView: BarrackView())
        let navi = UINavigationController(rootViewController: swiftUIController)
        self.present(navi, animated: true)
    }

}

