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
        var dateComponets = DateComponents()
        guard let day = dateTF.text, let month = monthTF.text, let year = yearTF.text else { return }
        dateComponets.day = Int(day)
        dateComponets.month = Int(month)
        dateComponets.year = Int(year)
        
        let calendar = Calendar.current
        guard let date = calendar.date(from: dateComponets) else { return }
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        let weekday = dateFormatter.string(from: date)
        
        resultLabel.text = weekday
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

