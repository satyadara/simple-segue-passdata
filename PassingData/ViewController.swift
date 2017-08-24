//
//  ViewController.swift
//  PassingData
//
//  Created by Satya Syahputra on 7/24/17.
//  Copyright © 2017 Satya Syahputra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var univField: UITextField!
    @IBOutlet weak var prodiField: UITextField!
    @IBOutlet weak var nameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func passPressed(_ sender: Any?) {
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var destVC = segue.destination as! ViewControllerPassData
        
        destVC.nameString = nameField.text ?? "NONE"
        destVC.prodiString = prodiField.text ?? "NONE"
        destVC.univString = univField.text ?? "NONE"
    }

}

