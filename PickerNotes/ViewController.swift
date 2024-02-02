//
//  ViewController.swift
//  PickerNotes
//
//  Created by GABRIELA AVILA on 2/2/24.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var dateOutlet: UIDatePicker!
    
    @IBOutlet weak var pickerOutlet: UIPickerView!
    var foods = ["Apple", "Steak", "Fries", "A", "B"]
    var selectedFood = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerOutlet.delegate = self
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return foods.count
            
        }
        return 0
    }

    //This function is looped for you for every row in the component
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            if component == 0{
                return foods[row]
            }
            return ""
        }

        // this function gets called when you stop on an item in a wheel
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            if component == 0{
                selectedFood = foods[row]
            }
        }

    
    @IBAction func foodSubmitAction(_ sender: UIButton) {
        print(selectedFood)
    }
    
    
    @IBAction func dateSubmitAction(_ sender: UIButton) {
        
        
    }
    
    
    
}

