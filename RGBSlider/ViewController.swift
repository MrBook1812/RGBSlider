//
//  ViewController.swift
//  RGBSlider
//
//  Created by Kirill Kniga on 07.02.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var rgbView: UIView!
    
    @IBOutlet var redCounter: UITextField!
    @IBOutlet var greenCounter: UITextField!
    @IBOutlet var blueCounter: UITextField!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func redSliderAction() {
        rgbView.backgroundColor = .red.withAlphaComponent(CGFloat(redSlider.value))
        redCounter.text = redSlider.value.formatted()
    }
    
    @IBAction func greenSliderAction() {
        rgbView.backgroundColor = .green.withAlphaComponent(CGFloat(redSlider.value))
        greenCounter.text = greenSlider.value.formatted()
    }
    
    @IBAction func blueSliderAction() {
        rgbView.backgroundColor = .blue.withAlphaComponent(CGFloat(redSlider.value))
        blueCounter.text = blueSlider.value.formatted()
    }
}

