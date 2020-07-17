//
//  ViewController.swift
//  DisplayRgb-iOS
//
//  Created by Muhsin Etki on 16.07.2020.
//  Copyright © 2020 Muhsin Etki. All rights reserved.
//

import UIKit

class ViewController: UIViewController  {
    
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var redTextField: UITextField!
    
    @IBOutlet weak var greenTextField: UITextField!
    
    @IBOutlet weak var blueTextField: UITextField!
    @IBOutlet weak var showButton: UIButton!
    
    var red: Float = 0.0
    var green: Float = 0.0
    var blue: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        infoLabel.text = "Please type RGB values \n 0 to 255"
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func showButtonPressed(_ sender: UIButton) {
          
          redTextField.endEditing(true)
          greenTextField.endEditing(true)
          blueTextField.endEditing(true)
          
        red = Float(redTextField.text!) ?? 0.0
        green = Float(greenTextField.text!) ?? 0.0
        blue = Float(blueTextField.text!) ?? 0.0
          
        self.performSegue(withIdentifier: "goToColor", sender: self)
      }
    

     
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if segue.identifier == "goToColor" {
             let destinationVC = segue.destination as! SecondViewController
             destinationVC.red = red
             destinationVC.green = green
             destinationVC.blue = blue
         }
     }
    
    
    
}
