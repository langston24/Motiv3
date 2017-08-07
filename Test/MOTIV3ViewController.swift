//
//  MOTIV3ViewController.swift
//  Test
//
//  Created by Big.SkinnyCo on 8/4/17.
//  Copyright © 2017 HGPMAC16. All rights reserved.
//

import UIKit
import FirebaseAuth
class MOTIV3ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        if Auth.auth().currentUser != nil {
            self.presentLoggedInScreen()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createAccountTapped(_ sender: Any) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().createUser(withEmail: email, password: password, completion:
                { user, error in
                    if let firebaseError = error {
                        print(firebaseError.localizedDescription)
                        return
                    }
                    self.presentLoggedInScreen()
            })
        }
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        if let email = emailTextField.text, let password = passwordTextField.text {
            Auth.auth().signIn(withEmail: email, password: password, completion: { (user,
                error) in
                if let firebaseError = error {
                    print(firebaseError.localizedDescription)
                    return
                }
                self.presentLoggedInScreen()
            })
        }
    }
    
    func presentLoggedInScreen() {
        let storyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let FrontOfShirtViewController:FrontOfShirtViewController = storyboard.instantiateViewController(withIdentifier: "FrontOfShirtViewController") as! FrontOfShirtViewController
        self.present(FrontOfShirtViewController, animated: true, completion: nil)
    }
}

