//
//  OnBoardingSignUpVC.swift
//  Zmaka
//
//  Created by Marwan Khalid on 12/30/20.
//

import UIKit

class OnBoardingSignUpVC:UIViewController{
    
    @IBOutlet var continueWithEmail: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGestures()
    }
    
    func setupGestures(){
        let selector = UITapGestureRecognizer(target: self, action: #selector(tapOncontinueWithEmail))
        continueWithEmail.addGestureRecognizer(selector)
    }
    
    @objc func tapOncontinueWithEmail(){
        guard let signIN = storyboard?.instantiateViewController(withIdentifier: "SignUpVC") as? SignUpVC else {return}
        signIN.modalPresentationStyle = .fullScreen
        self.present(signIN, animated: true, completion: nil)
    }
    
    @IBAction func signIn(_ sender: Any) {
        guard let signIN = storyboard?.instantiateViewController(withIdentifier: "SignInVC") as? SignInVC else {return}
        signIN.modalPresentationStyle = .fullScreen
        self.present(signIN, animated: true, completion: nil)
    }
    
    @IBAction func back(_ sender: Any) {
        guard let signIN = storyboard?.instantiateViewController(withIdentifier: "SignInVC") as? SignInVC else {return}
        signIN.modalPresentationStyle = .fullScreen
        self.present(signIN, animated: true, completion: nil)
    }
}
