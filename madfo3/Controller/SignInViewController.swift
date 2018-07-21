//
//  SignInViewController.swift
//  instaPay
//
//  Created by Ebtsam alkhuzai on 08/11/1439 AH.
//  Copyright © 1439 Ebtsam alkhuzai. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignInViewController: UIViewController ,  UITextFieldDelegate{
    @IBOutlet weak var signInEmail: UITextField!
    
    @IBOutlet weak var signInPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    self.signInEmail.delegate = self
    self.signInPassword.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signIn(_ sender: Any) {
 
        guard let email = signInEmail.text , let pass = signInPassword.text else {
            return
        }
        Auth.auth().signIn(withEmail: email, password: pass) { (result, error) in
            if error != nil {
                 print("*********************************************** error *****************************")
                 print(error)
                
                let alert = UIAlertController(title: "Error", message: "some thing wrong", preferredStyle: UIAlertControllerStyle.alert)
                alert.addAction(UIAlertAction(title: "cancel", style: UIAlertActionStyle.default, handler: nil))
                self.present(alert, animated: true, completion: nil)


            } else {
                print ("log int successfully")
               self.performSegue(withIdentifier: "goToHome", sender: self)
            }
        }
        }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {

if (textField == self.signInEmail) {
 self.signInPassword.becomeFirstResponder()
 }
 else if (textField == self.signInEmail){
 textField.resignFirstResponder()
 
 }
        
        return true }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
