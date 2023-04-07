//
//  LoginViewController.swift
//  Flash Chat iOS13
//

//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    

    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text{
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                //guard let strongSelf = self else { return }
                if let e = error {
                    print(e.localizedDescription)
                }else{
                    self.performSegue(withIdentifier: Constants.loginSegue, sender: self)
                }
            }
        }
            
    }
    
}
