//
//  ColorPickerViewController.swift
//  Color Picker
//
//  Created by Sylvan .D. Ash on 2/4/16.
//  Copyright © 2016 Daitensai. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, ColorPickerDelegate {

    private var colorPickerDelegate: ColorPickerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colorPickerDelegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    // MARK: - Color Picker Delegate
    
    func colorPickerTouched(sender: ColorPicker, color: UIColor, point: CGPoint, state: UIGestureRecognizerState) {
        // TODO
    }
}
