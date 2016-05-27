//
//  ViewController.swift
//  Color Picker
//
//  Created by Sylvan .D. Ash on 2/4/16.
//  Copyright © 2016 Daitensai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var colorView: UIView!
    
    var redValue: Float = 0
    var greenValue: Float = 0
    var blueValue: Float = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changeColorViewColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: IB Actions
    
    @IBAction func redSliderChanged(sender: UISlider) {
        self.redValue = sender.value
        changeColorViewColor()
        changeLabelNumbers(self.redLabel, color: "Red", value: self.redValue)
    }
    
    @IBAction func greenSliderChanged(sender: UISlider) {
        self.greenValue = sender.value
        changeColorViewColor()
        changeLabelNumbers(self.greenLabel, color: "Green", value: self.greenValue)
    }
    
    @IBAction func blueSliderChanged(sender: UISlider) {
        self.blueValue = sender.value
        changeColorViewColor()
        changeLabelNumbers(self.blueLabel, color: "Blue", value: self.blueValue)
    }

    
    // MARK: - Private
    
    func changeColorViewColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(self.redValue), green: CGFloat(self.greenValue), blue: CGFloat(self.blueValue), alpha: 1.0)
    }
    
    func changeLabelNumbers(label: UILabel, color: String, value: Float) {
        let roundedColorValue = String(format: "%0.0f", (value * 255))
        label.text = "\(color): \(roundedColorValue)"
    }
}

