//
//  SignUpSignInViewController.swift
//  madfo3
//
//  Created by Anfal Alatawi on 03/11/1439 AH.
//  Copyright © 1439 Ebtsam alkhuzai. All rights reserved.
//

import UIKit
import Firebase
//import FirebaseAuth

class SignUpViewController: UIViewController , UITextFieldDelegate {
    
   // @IBOutlet weak var signInEmail: UIView!
    
      var ref = Database.database().reference()

    @IBOutlet weak var signUpEmail: UITextField!
    @IBOutlet weak var signUpName: UITextField!
    
    @IBOutlet weak var signUpLastName: UITextField!
    @IBOutlet weak var signUpPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
         self.signUpEmail.delegate = self
         self.signUpName.delegate = self
         self.signUpLastName.delegate = self
         self.signUpPassword.delegate = self
 
        // Do any additional setup after loading the view.
    }

    
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    if  (textField == self.signUpName) {
              self.signUpEmail.becomeFirstResponder()
        
    }else if  (textField == self.signUpEmail) {
            self.signUpPassword.becomeFirstResponder()
        
    }else if  (textField == self.signUpPassword){
              self.signUpLastName.becomeFirstResponder()
        
    }else if (textField == self.signUpLastName){
               textField.resignFirstResponder()
            }

    
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signUp(_ sender: Any) {

        
        guard let email = signUpEmail.text , let pass = signUpPassword.text , let name = signUpName.text , let lastName = signUpLastName.text else {
            return
        }
        
        Auth.auth().createUser(withEmail: email,password: pass, completion: {  (result, error) in
            if (error != nil){
                
                return
            }
            guard let uid = result?.user.uid else {
                return
            }
            
            let usersReference = self.ref.child("users").child(uid)
            let values = ["email": email, "password":pass]
            usersReference.updateChildValues(values, withCompletionBlock: { (error, reference) in
                if error != nil {
                    let alert = UIAlertController(title: "Error", message: "some thing wrong", preferredStyle: UIAlertControllerStyle.alert)
                    alert.addAction(UIAlertAction(title: "cancel", style: UIAlertActionStyle.default, handler: nil))
                    self.present(alert, animated: true, completion: nil)

                    return
                }
                
                print("**************** user data succeessfully stored!*********************")
            })
            
            self.performSegue(withIdentifier: "goToHome", sender: self)
        })
        
        
        
        print("your email \(email) your password \(pass) ")
        
        
    }

   
    
}
