
//
//  SecondViewController.swift
//  DisplayRgb-iOS
//
//  Created by Muhsin Etki on 16.07.2020.
//  Copyright © 2020 Muhsin Etki. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var red: Float = 0.0
    var green: Float = 0.0
    var blue: Float = 0.0
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: CGFloat(red/255.0), green: CGFloat(green/255.0), blue: CGFloat(blue/255.0), alpha: 1.0)
    }

    @IBAction func newColorButtonPressed(_ sender: UIButton) {
                self.dismiss(animated: true, completion: nil)
    }
}
