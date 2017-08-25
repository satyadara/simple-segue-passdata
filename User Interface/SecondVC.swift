//
//  SecondVC.swift
//  User Interface
//
//  Created by Satya Syahputra on 8/24/17.
//  Copyright © 2017 Satya Syahputra. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    var stringPassed: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        myLabel.text = stringPassed
    }
}
