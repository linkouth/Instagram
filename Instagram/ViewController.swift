//
//  ViewController.swift
//  Instagram
//
//  Created by User on 07/06/2019.
//  Copyright © 2019 Timur LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dateTF: UITextField!
    @IBOutlet weak var monthTF: UITextField!
    @IBOutlet weak var yearTF: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func findDay() {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

