//
//  ViewController.swift
//  TConverter
//
//  Created by Рушания on 28.10.2020.
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
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        let tempratureCelsius = Int (sender.value)
        celsiusLabel.text = "\(tempratureCelsius)ºC"
        let fahrenheitTemprature = Int ((sender.value * 9 / 5 ) + 32)
        fahrenheitLabel.text = "\(fahrenheitTemprature)ºF"
    }
    
    
}

