//
//  ViewController.swift
//  LoginSample
//
//  Created by Johnley Delgado on 01/02/2019.
//  Copyright © 2019 Johnley Delgado. All rights reserved.
//

import UIKit
import SCLAlertView
class ViewController: UIViewController {
   
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let appearance = SCLAlertView.SCLAppearance(
            kWindowWidth: 300, kWindowHeight: 360, kTitleFont: UIFont(name: "HelveticaNeue", size: 10)!, showCloseButton: false, showCircularIcon: false
        )
        let alert = SCLAlertView(appearance: appearance)
        
        // Creat the subview
        let subview = UIView(frame: CGRect(x:0,y:0,width:240,height:135))
        let imageV = UIImageView(frame: CGRect(x:60,y:1,width:160,height:65))
      
        imageV.image = UIImage(named: "cc_logo")
        
        subview.addSubview(imageV)
        
        let cc_logoLabel = UILabel(frame: CGRect(x:10,y:imageV.frame.maxY + 10,width:240,height:80))
        cc_logoLabel.text = "Suspendisse felis sem, condimentum ullamcorper est sit amet, molestie etiam lorem orci, consequat"
        cc_logoLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        cc_logoLabel.numberOfLines = 0
        cc_logoLabel.textAlignment = NSTextAlignment.center
        cc_logoLabel.font = cc_logoLabel.font.withSize(15)
        subview.addSubview(cc_logoLabel)
        
        alert.customSubview = subview
        
        let btn = alert.addButton("Watch Our Story") {
           self.SignUp()
        }
        
        alert.showWarning("Welcome to ", subTitle: "")
        btn.setTitleColor(.black, for: .normal)
        btn.backgroundColor = UIColor(red: 76/255, green: 143/255, blue: 222/255, alpha: 1.0)
    }

    func SignUp(){
       
        
        let appearance = SCLAlertView.SCLAppearance(
            kWindowWidth: 300, kWindowHeight: 360, kTitleFont: UIFont(name: "HelveticaNeue-Bold", size: 40)!, showCloseButton: false, showCircularIcon: false, hideWhenBackgroundViewIsTapped: false
        )
        let alert = SCLAlertView(appearance: appearance)
      
        // Creat the subview
        let subview = UIView(frame: CGRect(x:0,y:0,width:240,height:150))
      
        
        let signInLabel = UILabel(frame: CGRect(x:10,y:1,width:180,height:25))
        signInLabel.text = "Already have an account ?"
        signInLabel.font = signInLabel.font.withSize(15)
        signInLabel.textColor = UIColor.gray
        subview.addSubview(signInLabel)
        
        let signInBtn = SCLButton()
        signInBtn.setTitle("Sign in", for: .normal)
        signInBtn.setTitleColor(UIColor.darkGray, for: .normal)
        signInBtn.titleLabel?.font = UIFont(name:"Avenir",size:15)
        signInBtn.frame = CGRect(x:185,y:1,width:65,height:25)
        signInBtn.addAction(for: .touchUpInside) {
            alert.hideView()
            self.SignIn()
        }
        subview.addSubview(signInBtn)
        
        
        
        let emailTextField = UITextField(frame: CGRect(x:10,y:signInLabel.frame.maxY + 10,width:250,height:40))
        emailTextField.background = UIImage(named: "input")
        emailTextField.placeholder = "Email"
        emailTextField.layer.borderColor = UIColor.clear.cgColor
        emailTextField.layer.borderWidth = 0
        emailTextField.font = UIFont(name: "Avenir", size: 15)
        emailTextField.textAlignment = NSTextAlignment.center
      
        subview.addSubview(emailTextField)
        
        let passwordTextField = UITextField(frame: CGRect(x:10,y:emailTextField.frame.maxY + 10,width:250,height:40))
        passwordTextField.background = UIImage(named: "input")
        passwordTextField.isSecureTextEntry.toggle()
        passwordTextField.placeholder = "Password"
        passwordTextField.layer.borderColor = UIColor.clear.cgColor
        passwordTextField.layer.borderWidth = 0
        passwordTextField.font = UIFont(name: "Avenir", size: 15)
        passwordTextField.textAlignment = NSTextAlignment.center
        subview.addSubview(passwordTextField)
        
        
        let forgotPasswordLabel = UILabel(frame: CGRect(x:10,y:emailTextField.frame.maxY + 50,width:180,height:20))
        forgotPasswordLabel.text = "Forgot your password?"
        forgotPasswordLabel.font = forgotPasswordLabel.font.withSize(13)
        forgotPasswordLabel.textColor = UIColor.gray
        subview.addSubview(forgotPasswordLabel)
        
        let forgotPassword = SCLButton()
        forgotPassword.setTitle("Tap to reset", for: .normal)
        forgotPassword.setTitleColor(UIColor.darkGray, for: .normal)
        forgotPassword.titleLabel?.font = UIFont(name:"Avenir",size:13)
        forgotPassword.frame = CGRect(x:88,y:emailTextField.frame.maxY + 50,width:200,height:20)
        forgotPassword.addAction(for: .touchUpInside) {
            alert.hideView()
            self.forgotPassword()
        }
        subview.addSubview(forgotPassword)
 
        
        alert.customSubview = subview
        
        //Button
        let btn = alert.addButton("Sign up") {
            print("Second button tapped")
            self.SignUp()
        }
        

        
        alert.showWarning("Sign Up", subTitle: "")
        
        //Changes of button
        btn.backgroundColor = UIColor(red: 76/255, green: 143/255, blue: 222/255, alpha: 1.0)
        btn.setTitleColor(.white, for: .normal)
    
  
        
    }

    func SignIn(){
        
        
        let appearance = SCLAlertView.SCLAppearance(
            kWindowWidth: 300, kWindowHeight: 360,kTitleFont: UIFont(name: "HelveticaNeue-Bold", size: 40)!, showCloseButton: false, showCircularIcon: false, hideWhenBackgroundViewIsTapped: false
        )
        let alert = SCLAlertView(appearance: appearance)
        
        // Creat the subview
        let subview = UIView(frame: CGRect(x:0,y:0,width:240,height:150))
        
        
        let signUpLabel = UILabel(frame: CGRect(x:10,y:1,width:180,height:25))
        signUpLabel.text = "Dont have an account?"
        signUpLabel.font = signUpLabel.font.withSize(15)
        signUpLabel.textColor = UIColor.gray
        subview.addSubview(signUpLabel)
        
        let signUpBtn = SCLButton()
        signUpBtn.setTitle("Sign up", for: .normal)
        signUpBtn.setTitleColor(UIColor.darkGray, for: .normal)
        signUpBtn.titleLabel?.font = UIFont(name:"Avenir",size:15)
        signUpBtn.frame = CGRect(x:165,y:1,width:65,height:25)
        signUpBtn.addAction(for: .touchUpInside) {
            alert.hideView()
            self.SignUp()
            print("Hello, Closure!")
        }
        subview.addSubview(signUpBtn)
        
        
        
        let emailTextField = UITextField(frame: CGRect(x:10,y:signUpLabel.frame.maxY + 10,width:250,height:40))
        emailTextField.background = UIImage(named: "input")
        emailTextField.placeholder = "Email"
        emailTextField.layer.borderColor = UIColor.clear.cgColor
        emailTextField.layer.borderWidth = 0
        emailTextField.font = UIFont(name: "Avenir", size: 15)
        emailTextField.textAlignment = NSTextAlignment.center
        subview.addSubview(emailTextField)
        
        let passwordTextField = UITextField(frame: CGRect(x:10,y:emailTextField.frame.maxY + 10,width:250,height:40))
        passwordTextField.background = UIImage(named: "input")
        passwordTextField.isSecureTextEntry.toggle()
        passwordTextField.placeholder = "Password"
        passwordTextField.layer.borderColor = UIColor.clear.cgColor
        passwordTextField.layer.borderWidth = 0
        passwordTextField.font = UIFont(name: "Avenir", size: 15)
        passwordTextField.textAlignment = NSTextAlignment.center
        subview.addSubview(passwordTextField)
        
        let forgotPasswordLabel = UILabel(frame: CGRect(x:10,y:emailTextField.frame.maxY + 50,width:180,height:20))
        forgotPasswordLabel.text = "Forgot your password?"
        forgotPasswordLabel.font = forgotPasswordLabel.font.withSize(13)
        forgotPasswordLabel.textColor = UIColor.gray
        subview.addSubview(forgotPasswordLabel)
        
        let forgotPassword = SCLButton()
        forgotPassword.setTitle("Tap to reset", for: .normal)
        forgotPassword.setTitleColor(UIColor.darkGray, for: .normal)
        forgotPassword.titleLabel?.font = UIFont(name:"Avenir",size:13)
        forgotPassword.frame = CGRect(x:88,y:emailTextField.frame.maxY + 50,width:200,height:20)
        forgotPassword.addAction(for: .touchUpInside) {
            alert.hideView()
            self.forgotPassword()
        }
        subview.addSubview(forgotPassword)
        alert.customSubview = subview
        
        //Button
        let btn = alert.addButton("Sign in") {
            print("Second button tapped")
            self.SignIn()
        }
   
        
        
        alert.showWarning("Sign In", subTitle: "")
        
        //Changes of button
        btn.backgroundColor = UIColor(red: 76/255, green: 143/255, blue: 222/255, alpha: 1.0)
        btn.setTitleColor(.white, for: .normal)

        
        
    }
    
    func forgotPassword(){
        let appearance = SCLAlertView.SCLAppearance(
            kWindowWidth: 300, kWindowHeight: 360,kTitleFont: UIFont(name: "HelveticaNeue-Bold", size: 40)!, showCloseButton: false, showCircularIcon: false, hideWhenBackgroundViewIsTapped: false
        )
        let alert = SCLAlertView(appearance: appearance)
        
        // Creat the subview
        let subview = UIView(frame: CGRect(x:0,y:0,width:240,height:150))
        
        
        let signUpLabel = UILabel(frame: CGRect(x:10,y:1,width:180,height:25))
        signUpLabel.text = "Please enter your email?"
        signUpLabel.font = signUpLabel.font.withSize(15)
        signUpLabel.textColor = UIColor.gray
        subview.addSubview(signUpLabel)
        
    
        
        let emailTextField = UITextField(frame: CGRect(x:10,y:signUpLabel.frame.maxY + 10,width:250,height:40))
        emailTextField.background = UIImage(named: "input")
        emailTextField.placeholder = "Email"
        emailTextField.layer.borderColor = UIColor.clear.cgColor
        emailTextField.layer.borderWidth = 0
        emailTextField.font = UIFont(name: "Avenir", size: 15)
        emailTextField.textAlignment = NSTextAlignment.center
        subview.addSubview(emailTextField)
        
        
        let forgotPasswordLabel = UILabel(frame: CGRect(x:10,y:emailTextField.frame.maxY + 50,width:180,height:20))
        forgotPasswordLabel.text = "Remember your password?"
        forgotPasswordLabel.font = forgotPasswordLabel.font.withSize(13)
        forgotPasswordLabel.textColor = UIColor.gray
        subview.addSubview(forgotPasswordLabel)
        
        let forgotPassword = SCLButton()
        forgotPassword.setTitle("Tap to signin", for: .normal)
        forgotPassword.setTitleColor(UIColor.darkGray, for: .normal)
        forgotPassword.titleLabel?.font = UIFont(name:"Avenir",size:13)
        forgotPassword.frame = CGRect(x:113,y:emailTextField.frame.maxY + 50,width:200,height:20)
        forgotPassword.addAction(for: .touchUpInside) {
            alert.hideView()
            self.SignIn()
        }
        subview.addSubview(forgotPassword)
        alert.customSubview = subview
        
        //Button
        let btn = alert.addButton("Send Reset") {
            print("Second button tapped")
            self.SignIn()
        }
        
        
        
        alert.showWarning("Reset Password", subTitle: "")
        
        //Changes of button
        btn.backgroundColor = UIColor(red: 76/255, green: 143/255, blue: 222/255, alpha: 1.0)
        btn.setTitleColor(.white, for: .normal)

        
    }
    
}

