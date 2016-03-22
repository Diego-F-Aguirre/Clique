//
//  LoginViewController.swift
//  Clique
//
//  Created by Diego Aguirre on 3/6/16.
//  Copyright © 2016 Diego Aguirre. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class LoginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        
        return UIStatusBarStyle.LightContent
    }
    
    
    @IBAction func loginButtonPressed(sender: AnyObject) {
        
        let facebookLogin = FBSDKLoginManager()
        facebookLogin.logInWithReadPermissions(["email"], handler: {
            (facebookResult, facebookError) -> Void in
            if facebookError != nil {
                print("Facebook login failed. Error \(facebookError)")
            } else if facebookResult.isCancelled {
                print("Facebook login was cancelled.")
            } else {
                let accessToken = FBSDKAccessToken.currentAccessToken().tokenString
                FirebaseController.base.authWithOAuthProvider("facebook", token: accessToken,
                    withCompletionBlock: { error, authData in
                        if error != nil {
                            print("Login failed. \(error)")
                        } else {
                            print("Logged in! \(authData)")
//                            self.performSegueWithIdentifier("loginToChat", sender: nil)
                        }
                })
            }
        })
    }
    
    
    
    
    
    
    // MARK: - Navigation
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        super.prepareForSegue(segue, sender: sender)
        
        let navVC = segue.destinationViewController as! UITabBarController
        let chatVC = navVC.viewControllers?.first as! ChatViewController
        chatVC.senderId = FirebaseController.base.authData.uid
        chatVC.senderDisplayName = ""
    }
    
    
}
