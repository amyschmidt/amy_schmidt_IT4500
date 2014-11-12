//
//  ViewController.swift
//  PickerViewPractice
//
//  Created by Amy Schmidt on 11/12/14.
//  Copyright (c) 2014 Amy Schmidt. All rights reserved.
//

import UIKit

    
class ViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate {
        
        
    
    @IBOutlet weak var selectedItem: UILabel!
        
    @IBOutlet weak var colorPicker: UIPickerView!
        
        
        let pickerData = ["Red", "Orange", "Yellow", "Green", "Blue", "Indigo", "Violet"]
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            colorPicker.delegate = self
            colorPicker.dataSource = self
            
            selectedItem.text = pickerData[0]
            // Do any additional setup after loading the view, typically from a nib.
        }
        
        func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
            return 1
        }
        
        func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return pickerData.count
        }
        
        func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
            return pickerData[row]
        }
        
        func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            selectedItem.text = pickerData[row]
        }
        
}


