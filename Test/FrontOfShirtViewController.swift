//
//  FrontOfShirtViewController.swift
//  Test
//
//  Created by Big.SkinnyCo on 8/4/17.
//  Copyright © 2017 HGPMAC16. All rights reserved.
//

import UIKit
import FirebaseAuth

class FrontOfShirtViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //This is how to sign out from Firebase
    @IBAction func backButton(sender: UIButton!){
        
        do {
            try Auth.auth().signOut()
            self.dismiss(animated: true, completion: nil)
        } catch let error as Error {
            print("Signout failed -> \(error.localizedDescription)")
        }
        
    }
}

func colorTapped(button: UIButton!) {
    
}

