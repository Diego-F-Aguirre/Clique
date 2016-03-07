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
                        }
                })
            }
        })
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
