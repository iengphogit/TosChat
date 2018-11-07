//
//  ViewController.swift
//  TosChat
//
//  Created by Iengpho on 11/2/18.
//  Copyright © 2018 Iengpho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var userNameString: String?
    var userPasswordString: String?
    override func viewDidLoad() {
        /*
        
        sc.frame = self.view.frame
        sc.contentSize = CGSize(width: self.view.frame.size.width, height: 1000)
        sc.translatesAutoresizingMaskIntoConstraints = true
        self.view.addSubview(sc)
 
        */
        
        /*
        
        /* Set up uiScrollView */
        let scrollView = UIScrollView()
        scrollView.backgroundColor = UIColor.green
        self.view.addSubview(scrollView)
        
        //set disable autoresizing
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        //Set constain to start
        scrollView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        //Set constain to end
        scrollView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
 
        */
        
        let formViewHolder = UIView()
        self.view.addSubview(formViewHolder)
        // set attributes //
        
        formViewHolder.backgroundColor = UIColor.init(netHex: 0xFFFFFF)
        
        /* set constaint */
        formViewHolder.translatesAutoresizingMaskIntoConstraints = false
        formViewHolder.widthAnchor.constraint(equalToConstant: 300).isActive = true
        formViewHolder.heightAnchor.constraint(equalToConstant: 400).isActive = true
//        formViewHolder.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 64).isActive = true
        
//        formViewHolder.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 8).isActive = true
//        formViewHolder.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: 8).isActive = true
//        formViewHolder.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 8).isActive = true
        
        formViewHolder.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        formViewHolder.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        let titleLabel = UILabel()
        formViewHolder.addSubview(titleLabel)
        
        
        titleLabel.font = UIFont(name: "Montserrat-Black", size: 40)
        let myStringTitle = "TosChat"
        let attributedString: NSMutableAttributedString = NSMutableAttributedString(string: myStringTitle)
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.init(netHex: 0x53BAB6), range: NSRange(location: 3, length: 4))
        
        titleLabel.attributedText = attributedString
            
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        titleLabel.topAnchor.constraint(equalTo: formViewHolder.topAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: formViewHolder.leadingAnchor).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: formViewHolder.trailingAnchor).isActive = true
        
        let subTitleLabel = UILabel()
        formViewHolder.addSubview(subTitleLabel)
        subTitleLabel.text = "Your TosChat Messanger Privacy Tool!"
        subTitleLabel.textColor = UIColor.black
        subTitleLabel.font = UIFont(name: subTitleLabel.font.fontName, size: 12)
        
        //set constrain
        subTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 3).isActive = true
        subTitleLabel.leadingAnchor.constraint(equalTo: formViewHolder.leadingAnchor).isActive = true
        subTitleLabel.trailingAnchor.constraint(equalTo: formViewHolder.trailingAnchor).isActive = true
        
        let userNameLabel = UILabel()
        formViewHolder.addSubview(userNameLabel)
        userNameLabel.textColor = UIColor.gray
        userNameLabel.text = "TOSCHAT USERNAME"
        userNameLabel.font = UIFont(name: userNameLabel.font.fontName, size: 14)
        
        //set constrain
        userNameLabel.translatesAutoresizingMaskIntoConstraints = false
        userNameLabel.topAnchor.constraint(equalTo: subTitleLabel.bottomAnchor, constant: 24).isActive = true
        userNameLabel.leadingAnchor.constraint(equalTo: formViewHolder.leadingAnchor).isActive = true
        userNameLabel.trailingAnchor.constraint(equalTo: formViewHolder.trailingAnchor).isActive = true
        
        
        let userNameTextField = UITextField()
        formViewHolder.addSubview(userNameTextField)
        userNameTextField.placeholder = "User name"
        userNameTextField.borderStyle = .roundedRect
//        userNameTextField.delegate = self
        userNameTextField.tag = 1
        userNameTextField.addTarget(self, action: #selector(self.onEditingChanged(_:)), for: .editingChanged)
        
        //set constrain
        userNameTextField.translatesAutoresizingMaskIntoConstraints = false
        userNameTextField.topAnchor.constraint(equalTo: userNameLabel.bottomAnchor, constant: 8).isActive = true
        userNameTextField.leadingAnchor.constraint(equalTo: formViewHolder.leadingAnchor).isActive = true
        userNameTextField.trailingAnchor.constraint(equalTo: formViewHolder.trailingAnchor).isActive = true
        
        let userPasswordLabel = UILabel()
        formViewHolder.addSubview(userPasswordLabel)
        userPasswordLabel.textColor = UIColor.gray
        userPasswordLabel.text = "TOSCHAT PASSWORD"
        userPasswordLabel.font = UIFont(name: userPasswordLabel.font.fontName, size: 14)
        
        //set constrain
        userPasswordLabel.translatesAutoresizingMaskIntoConstraints = false
        userPasswordLabel.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: 24).isActive = true
        userPasswordLabel.leadingAnchor.constraint(equalTo: formViewHolder.leadingAnchor).isActive = true
        userPasswordLabel.trailingAnchor.constraint(equalTo: formViewHolder.trailingAnchor).isActive = true
        
        let userPasswordTextField = UITextField()
        formViewHolder.addSubview(userPasswordTextField)
        userPasswordTextField.placeholder = "User password"
        userPasswordTextField.borderStyle = .roundedRect
//        userPasswordTextField.delegate = self
        userPasswordTextField.isSecureTextEntry = true
        userPasswordTextField.addTarget(self, action: #selector(self.onEditingChanged), for: .editingChanged)
        userPasswordTextField.tag = 2
        
        
        //set constrain
        userPasswordTextField.translatesAutoresizingMaskIntoConstraints = false
        userPasswordTextField.topAnchor.constraint(equalTo: userPasswordLabel.bottomAnchor, constant: 8).isActive = true
        userPasswordTextField.leadingAnchor.constraint(equalTo: formViewHolder.leadingAnchor).isActive = true
        userPasswordTextField.trailingAnchor.constraint(equalTo: formViewHolder.trailingAnchor).isActive = true
        
        
        let loginButton = UIButtonX()
        formViewHolder.addSubview(loginButton)
        loginButton.setTitle("Login", for: .normal)
        loginButton.backgroundColor = UIColor.init(netHex: 0x53BAB6)
        loginButton.layer.cornerRadius = 6
        
        //set constrain
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.topAnchor.constraint(equalTo: userPasswordTextField.bottomAnchor, constant: 24).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: formViewHolder.leadingAnchor).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: formViewHolder.trailingAnchor).isActive = true
        
        loginButton.addTarget(self, action: #selector(self.submitLogin(_:)), for: .touchUpInside)
        loginButton.tag = 12
        loginButton.accessibilityValue = "I'm here to say the Earth!"
    }
    
    @objc func onEditingChanged(_ textField: UITextField){
        if textField.tag == 1 {
//            print("Username: \(textField.text!)")
            userNameString = textField.text
        } else if textField.tag == 2 {
//            print("Password: \(textField.text!)")
            userPasswordString = textField.text
        }
    }
    
    @objc func submitLogin(_ sender: UIButton){

//        print("\(userNameString ?? "empty") \(userPasswordString ?? "empty") \(isValidEmail(emailString: userNameString ?? "nil")) Test RegEx: \(checkRegEx(text: userPasswordString ?? ""))")
        //Only number ^[0-9]*$
        let regex = try! NSRegularExpression(pattern: "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,}")
        let a = regex.matches(userPasswordString!)
        print("\(a)")
    }
    
    func isValidEmail(emailString: String) -> Bool {
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Z0-9a-z.-]+\\.[A-Za-z]{2,64}"
        let checkMail = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return checkMail.evaluate(with: emailString)
        
    }
    
    func isValidPassword(pwdString: String) -> Bool {
//        let pwdRegEx = "[A-Z0-9a-z!@#$%^&*()]"
        
        return false
    }
    
    func testRegEx(_ text:String) -> Bool {
        let regExPattern = "[0-9]"
        let mChecker = NSPredicate(format: "SELF MATCHES %@", regExPattern)
        return mChecker.evaluate(with: text)
    }
    
    func checkRegEx(text:String) -> Bool {
        let range = NSRange(location: 0, length: text.utf16.count)
        let regex = try! NSRegularExpression(pattern: "[a-z]at")
        return regex.firstMatch(in: text, options: [], range: range) != nil
    }
    
    
}

extension NSRegularExpression {
    func matches(_ string: String) -> Bool {
        let range = NSRange(location: 0, length: string.utf16.count)
        return firstMatch(in: string, options: [], range: range) != nil
    }
}


extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        // return NO to disallow editing.
        print("TextField should begin editing method called")
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        // became first responder
        print("TextField did begin editing method called")
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        // return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end
        print("TextField should end editing method called")
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        // may be called if forced even if shouldEndEditing returns NO (e.g. view removed from window) or endEditing:YES called
        print("TextField did end editing method called")
        if textField.tag == 1 {
            self.userNameString = textField.text
        }else if textField.tag == 2 {
            self.userPasswordString = textField.text
        }
        
    }
    
//    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
//        // if implemented, called in place of textFieldDidEndEditing:
//        print("TextField did end editing with reason method called")
//    }

    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // return NO to not change text
        print("While entering the characters this method gets called")
        
       
        return true
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        // called when clear button pressed. return NO to ignore (no notifications)
        print("TextField should clear method called")
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // called when 'return' key pressed. return NO to ignore.
        print("TextField should return method called")
        // may be useful: textField.resignFirstResponder()
        return true
    }
    
}

