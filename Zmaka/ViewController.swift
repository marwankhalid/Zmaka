//
//  ViewController.swift
//  Zmaka
//
//  Created by Marwan Khalid on 12/29/20.
//

import UIKit
import TextFieldFloatingPlaceholder

class ViewController: UIViewController {

    @IBOutlet var password: TextFieldFloatingPlaceholder!
    @IBOutlet var emailAddress: TextFieldFloatingPlaceholder!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        password.validationTrueLineEditingColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        emailAddress.validationTrueLineEditingColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        password.validationTrueLineColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        emailAddress.validationTrueLineColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            
    }
}

