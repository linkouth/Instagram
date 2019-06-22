//
//  ViewController.swift
//  Instagram
//
//  Created by User on 07/06/2019.
//  Copyright © 2019 Timur LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    @IBAction func sliderValueChange(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        celsiusLabel.text = "\(temperatureCelsius)ºC"
        
        let temperatureFahrenheit = Int(round(sender.value * 9 / 5 + 32))
        fahrenheitLabel.text = "\(temperatureFahrenheit)ºF"
    }
}

