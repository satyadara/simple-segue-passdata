//
//  ViewControllerPassData.swift
//  PassingData
//
//  Created by Satya Syahputra on 7/24/17.
//  Copyright © 2017 Satya Syahputra. All rights reserved.
//

import UIKit
import Foundation

class ViewControllerPassData: UIViewController {

    @IBOutlet weak var labelUniv: UILabel!
    @IBOutlet weak var labelProdi: UILabel!
    @IBOutlet weak var labelName: UILabel!
    
    var nameString = String()
    var prodiString = String()
    var univString = String()
    
    override func viewDidLoad() {
        
        labelName.text = nameString
        labelProdi.text = prodiString
        labelUniv.text = univString
        
        // Do any additional setup after loading the view.
    }

}
