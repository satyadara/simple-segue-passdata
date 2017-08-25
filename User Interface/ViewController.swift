//
//  ViewController.swift
//  User Interface
//
//  Created by Satya Syahputra on 8/24/17.
//  Copyright © 2017 Satya Syahputra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func goToSecondVC(_ sender: Any) {
        let userInput = firstName.text! + " " + lastName.text!
        performSegue(withIdentifier: "goToSecondVC", sender: userInput)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondVC"   {
            if let destVC = segue.destination as? SecondVC  {
                destVC.stringPassed = sender as? String
            }
        }
    }

}

