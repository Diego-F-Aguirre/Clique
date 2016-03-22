//
//  ChatViewController.swift
//  Clique
//
//  Created by Diego Aguirre on 3/6/16.
//  Copyright © 2016 Diego Aguirre. All rights reserved.
//

import UIKit
import Firebase
import JSQMessagesViewController

class ChatViewController: JSQMessagesViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        
//        guard let currentUser = UserController.sharedController.currentUser,
//            let posts = posts else {
//                tabBarController?.performSegueWithIdentifier("loginToChat", sender: nil)
//                return
//        }
    }

   
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
