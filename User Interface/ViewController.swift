//
//  ViewController.swift
//  User Interface
//
//  Created by Satya Syahputra on 8/24/17.
//  Copyright © 2017 Satya Syahputra. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var hobbyPicker: UIPickerView!
    
    let hobbyArray = ["Sport", "Shopping", "Gaming", "Fishing", "Coding"]
    var selectedHobby = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    /**************** SEGUE ****************/
    @IBAction func goToSecondVC(_ sender: Any) {
        let userInput = firstName.text! + " " + lastName.text! + " " + selectedHobby
        performSegue(withIdentifier: "goToSecondVC", sender: userInput)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondVC"   {
            if let destVC = segue.destination as? SecondVC  {
                destVC.stringPassed = sender as? String
            }
        }
    }
    
    /**************** PICKER ****************/
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return hobbyArray[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return hobbyArray.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedHobby = hobbyArray[row]
    }
}

