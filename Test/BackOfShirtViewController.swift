//
//  BackOfShirtViewController.swift
//  Test
//
//  Created by Big.SkinnyCo on 8/4/17.
//  Copyright © 2017 HGPMAC16. All rights reserved.
//

import UIKit
import FirebaseAuth

class BackOfShirtViewController: UIViewController {
    
    @IBAction func logoutTapped(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            
            dismiss(animated: true, completion: nil)
        } catch {
            print("There was a problem logging out")
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
 }
