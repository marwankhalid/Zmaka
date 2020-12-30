//
//  SignUpVC.swift
//  Zmaka
//
//  Created by Marwan Khalid on 12/30/20.
//

import UIKit
import TextFieldFloatingPlaceholder

class SignUpVC:UIViewController{
    
    @IBOutlet var name: TextFieldFloatingPlaceholder!
    
    @IBOutlet var email: TextFieldFloatingPlaceholder!
    
    @IBOutlet var password: TextFieldFloatingPlaceholder!
    override func viewDidLoad() {
        super.viewDidLoad()
        setTextfields()
    }
    
    @IBAction func createAccount(_ sender: Any) {
        guard let home = storyboard?.instantiateViewController(withIdentifier: "HomeVC") as? HomeVC else { return }
        home.modalPresentationStyle = .fullScreen
        self.present(home, animated: true, completion: nil)
    }
    private func setTextfields(){
        password.validationTrueLineEditingColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        email.validationTrueLineEditingColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        name.validationTrueLineEditingColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        password.validationTrueLineColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        email.validationTrueLineColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        name.validationTrueLineColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            
    }
    @IBAction func back(_ sender: Any) {
        guard let signIN = storyboard?.instantiateViewController(withIdentifier: "OnBoardingSignUpVC") as? OnBoardingSignUpVC else {return}
        signIN.modalPresentationStyle = .fullScreen
        self.present(signIN, animated: true, completion: nil)
    }
    @IBAction func signIn(_ sender: Any) {
        guard let signIN = storyboard?.instantiateViewController(withIdentifier: "SignInVC") as? SignInVC else {return}
        signIN.modalPresentationStyle = .fullScreen
        self.present(signIN, animated: true, completion: nil)
    }
    
}
