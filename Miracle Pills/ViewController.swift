//
//  ViewController.swift
//  Miracle Pills
//
//  Created by Andreas Sterner on 2017-02-12.
//  Copyright © 2017 Andreas Sterner. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    
    @IBOutlet weak var statePickerBtn: UIButton!
    
    @IBOutlet weak var buyNowBtn: UIButton!
    
    
    let state = ["California","New York", "Texas", "Oklahoma",]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        
        statePicker.isHidden = false
        buyNowBtn.isHidden = true
    }


    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return state.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return state[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

        statePickerBtn.setTitle(state[row], for: UIControlState.normal)
        statePicker.isHidden = true
        buyNowBtn.isHidden = false
    }
    
    
    
}

