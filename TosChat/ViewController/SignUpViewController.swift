//
//  SignUpViewController.swift
//  TosChat
//
//  Created by Iengpho on 11/7/18.
//  Copyright © 2018 Iengpho. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate {
    
    var userNamer: String = ""
    var userPassword: String = ""
    var userConfirmPassword: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        let statusBarHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        let navBar: UINavigationBar = UINavigationBar(frame: CGRect(x: 0, y: statusBarHeight , width: self.view.frame.width, height: 44))
        
        let navItem = UINavigationItem(title: "Sign Up")
        
//        navItem.rightBarButtonItem = getDoneButton()
//        navItem.leftBarButtonItem = self.getBackButton()
        
        navBar.setItems([navItem], animated: false)
        self.view.addSubview(navBar)
        
        
        let bodyView = UIView()
//        bodyView.backgroundColor = UIColor.init(netHex: 0xC6C6D4)
        self.view.addSubview(bodyView)
        bodyView.translatesAutoresizingMaskIntoConstraints = false
        bodyView.topAnchor.constraint(equalTo: navBar.bottomAnchor).isActive = true
        bodyView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        bodyView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        bodyView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        
        
        let signUpView = UIView()
        bodyView.addSubview(signUpView)
        signUpView.backgroundColor = UIColor.white
        signUpView.translatesAutoresizingMaskIntoConstraints = false
//        signUpView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        signUpView.topAnchor.constraint(equalTo: bodyView.topAnchor, constant: 100).isActive = true
        signUpView.leadingAnchor.constraint(equalTo: bodyView.leadingAnchor, constant: 28).isActive = true
        signUpView.trailingAnchor.constraint(equalTo: bodyView.trailingAnchor, constant: -28).isActive = true
        signUpView.bottomAnchor.constraint(equalTo: bodyView.bottomAnchor, constant: 8).isActive = true
        signUpView.centerXAnchor.constraint(equalTo: bodyView.centerXAnchor).isActive = true
        
        let mLogo = UIImageView()
        signUpView.addSubview(mLogo)
        mLogo.translatesAutoresizingMaskIntoConstraints = false
        mLogo.topAnchor.constraint(equalTo: signUpView.topAnchor, constant: 32).isActive = true
        mLogo.widthAnchor.constraint(equalToConstant: 64).isActive = true
        mLogo.heightAnchor.constraint(equalToConstant: 64).isActive = true
        mLogo.leadingAnchor.constraint(equalTo: signUpView.leadingAnchor, constant: 8).isActive = true
        mLogo.image = UIImage(named: "logo-ios")
        
        let welcomeLable = UILabel()
        signUpView.addSubview(welcomeLable)
        welcomeLable.text = "Welcome to"
        welcomeLable.textColor = UIColor.gray
        welcomeLable.font = UIFont(name: welcomeLable.font.fontName, size: 14)
        welcomeLable.translatesAutoresizingMaskIntoConstraints = false
        welcomeLable.topAnchor.constraint(equalTo: mLogo.topAnchor, constant: 8).isActive = true
        welcomeLable.leadingAnchor.constraint(equalTo: mLogo.trailingAnchor, constant: 8).isActive = true
        
        let titleLabel = UILabel()
        signUpView.addSubview(titleLabel)
        titleLabel.font = UIFont(name: "Montserrat-Black", size: 22)
        
        let myStringTitle = "TosChat"
        let attributedString: NSMutableAttributedString = NSMutableAttributedString(string: myStringTitle)
        attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.init(netHex: 0x53BAB6), range: NSRange(location: 3, length: 4))
        
        titleLabel.attributedText = attributedString
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: welcomeLable.bottomAnchor, constant: 3).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: mLogo.trailingAnchor, constant: 8).isActive = true
        
        
        
        let userNameEdt = UITextField()
        signUpView.addSubview(userNameEdt)
        userNameEdt.placeholder = "Email & Phone"
        userNameEdt.delegate = self
        userNameEdt.tag = 1
        userNameEdt.addTarget(self, action: #selector(self.onEditChanged(_:)), for: UIControl.Event.editingChanged)
        
        userNameEdt.translatesAutoresizingMaskIntoConstraints = false
        userNameEdt.topAnchor.constraint(equalTo: mLogo.bottomAnchor, constant: 16).isActive = true
        userNameEdt.leadingAnchor.constraint(equalTo: signUpView.leadingAnchor, constant: 16).isActive = true
        userNameEdt.trailingAnchor.constraint(equalTo: signUpView.trailingAnchor, constant: -16).isActive = true
        
        let lineView = UIView()
        signUpView.addSubview(lineView)
        lineView.backgroundColor = UIColor.gray
        lineView.translatesAutoresizingMaskIntoConstraints = false
        lineView.topAnchor.constraint(equalTo: userNameEdt.bottomAnchor, constant: 8).isActive = true
        lineView.leadingAnchor.constraint(equalTo: signUpView.leadingAnchor, constant: 16).isActive = true
        lineView.trailingAnchor.constraint(equalTo: signUpView.trailingAnchor, constant: -16).isActive = true
        lineView.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        
        let userPasswordEdit = UITextField()
        signUpView.addSubview(userPasswordEdit)
        userPasswordEdit.placeholder = "Password"
        userPasswordEdit.isSecureTextEntry = true
        userPasswordEdit.delegate = self
        userPasswordEdit.tag = 2
        userPasswordEdit.addTarget(self, action: #selector(self.onEditChanged(_:)), for: UIControl.Event.editingChanged)
        
        userPasswordEdit.translatesAutoresizingMaskIntoConstraints = false
        userPasswordEdit.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 24).isActive = true
        userPasswordEdit.leadingAnchor.constraint(equalTo: signUpView.leadingAnchor, constant: 16).isActive = true
        userPasswordEdit.trailingAnchor.constraint(equalTo: signUpView.trailingAnchor, constant: -16).isActive = true
        
        let lineView2 = UIView()
        signUpView.addSubview(lineView2)
        lineView2.backgroundColor = UIColor.gray
        lineView2.translatesAutoresizingMaskIntoConstraints = false
        lineView2.topAnchor.constraint(equalTo: userPasswordEdit.bottomAnchor, constant: 8).isActive = true
        lineView2.leadingAnchor.constraint(equalTo: signUpView.leadingAnchor, constant: 16).isActive = true
        lineView2.trailingAnchor.constraint(equalTo: signUpView.trailingAnchor, constant: -16).isActive = true
        lineView2.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        
        let userConfirmPassWordEdit = UITextField()
        signUpView.addSubview(userConfirmPassWordEdit)
        userConfirmPassWordEdit.placeholder = "Confirm"
        userConfirmPassWordEdit.isSecureTextEntry = true
        userConfirmPassWordEdit.delegate = self
        userConfirmPassWordEdit.tag = 3
        userConfirmPassWordEdit.addTarget(self, action: #selector(self.onEditChanged(_:)), for: UIControl.Event.editingChanged)
        
        userConfirmPassWordEdit.translatesAutoresizingMaskIntoConstraints = false
        userConfirmPassWordEdit.topAnchor.constraint(equalTo: lineView2.bottomAnchor, constant: 24).isActive = true
        userConfirmPassWordEdit.leadingAnchor.constraint(equalTo: signUpView.leadingAnchor, constant: 16).isActive = true
        userConfirmPassWordEdit.trailingAnchor.constraint(equalTo: signUpView.trailingAnchor, constant: -16).isActive = true
        
        let lineView3 = UIView()
        signUpView.addSubview(lineView3)
        lineView3.backgroundColor = UIColor.gray
        lineView3.translatesAutoresizingMaskIntoConstraints = false
        lineView3.topAnchor.constraint(equalTo: userConfirmPassWordEdit.bottomAnchor, constant: 8).isActive = true
        lineView3.leadingAnchor.constraint(equalTo: signUpView.leadingAnchor, constant: 16).isActive = true
        lineView3.trailingAnchor.constraint(equalTo: signUpView.trailingAnchor, constant: -16).isActive = true
        lineView3.heightAnchor.constraint(equalToConstant: 0.5).isActive = true
        
        let registerBtn = UIButton()
        signUpView.addSubview(registerBtn)
        registerBtn.setTitle("REGISTER", for: UIControl.State.normal)
        registerBtn.setTitleColor(UIColor.init(netHex: 0x53BAB6), for: .normal)
        registerBtn.layer.borderColor = UIColor.init(netHex: 0x53BAB6).cgColor
        registerBtn.layer.borderWidth = 0.5
        registerBtn.layer.cornerRadius = 6
        registerBtn.addTarget(self, action: #selector(self.submitRegister(_:)), for: UIControl.Event.touchUpInside)
        
        
        registerBtn.translatesAutoresizingMaskIntoConstraints = false
        registerBtn.topAnchor.constraint(equalTo: lineView3.bottomAnchor, constant: 24).isActive = true
        registerBtn.leadingAnchor.constraint(equalTo: signUpView.leadingAnchor, constant: 8).isActive = true
//        registerBtn.trailingAnchor.constraint(equalTo: signUpView.trailingAnchor, constant: -8).isActive = true
        registerBtn.heightAnchor.constraint(equalToConstant: 40).isActive = true
        registerBtn.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        
        let horizontalStackView = UIStackView()
        signUpView.addSubview(horizontalStackView)
        horizontalStackView.alignment = .center
        horizontalStackView.axis = .horizontal
        horizontalStackView.spacing = 10
        
        horizontalStackView.translatesAutoresizingMaskIntoConstraints = false
        horizontalStackView.topAnchor.constraint(equalTo: registerBtn.bottomAnchor, constant: 16).isActive = true
        horizontalStackView.centerXAnchor.constraint(equalTo: signUpView.centerXAnchor, constant: 0).isActive = true
        
        let haveAnAccountLable = UILabel()
        horizontalStackView.addArrangedSubview(haveAnAccountLable)
        haveAnAccountLable.text = "Already have an account?"
        haveAnAccountLable.textColor = UIColor.gray
        
        let signInButton = UIButton()
        horizontalStackView.addArrangedSubview(signInButton)
        signInButton.setTitle("Sign In", for: .normal)
        signInButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
        signInButton.addTarget(self, action: #selector(self.gotoSignIn), for: .touchUpInside)
        
        
        let googleButton = UIButton()
        bodyView.addSubview(googleButton)
        googleButton.setTitle(" Login with Google+ ", for: UIControl.State.normal)
        googleButton.setTitleColor(UIColor.red, for: .normal)
        googleButton.layer.borderWidth = 0.5
        googleButton.layer.borderColor = UIColor.gray.cgColor
        googleButton.layer.cornerRadius = 10
        
        googleButton.translatesAutoresizingMaskIntoConstraints = false
        googleButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 8).isActive = true
        googleButton.centerXAnchor.constraint(equalTo: signUpView.centerXAnchor).isActive = true
        googleButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        googleButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        let facebookButton = UIButton()
        bodyView.addSubview(facebookButton)
        facebookButton.setTitle("Login with Facebook", for: .normal)
        facebookButton.setTitleColor(UIColor.blue, for: .normal)
        facebookButton.layer.borderWidth = 0.5
        facebookButton.layer.borderColor = UIColor.gray.cgColor
        facebookButton.layer.cornerRadius = 10
        
        facebookButton.translatesAutoresizingMaskIntoConstraints = false
        facebookButton.bottomAnchor.constraint(equalTo: googleButton.topAnchor, constant: -20).isActive = true
        facebookButton.centerXAnchor.constraint(equalTo: signUpView.centerXAnchor).isActive = true
        facebookButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        facebookButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
    }
    
    @objc func onEditChanged(_ textField: UITextField) {
        switch (textField.tag ) {
        case 1:
            self.userNamer = textField.text ?? ""
        case 2:
            self.userPassword = textField.text ?? ""
        case 3:
            self.userConfirmPassword = textField.text ?? ""
        default:
            self.userNamer = ""
            self.userPassword = ""
            self.userConfirmPassword = ""
        }
    }
    
    @objc func submitRegister(_ button: UIButton){
        print("Name: \(self.userNamer) Pass: \(self.userPassword) Confirm: \(self.userConfirmPassword)")
    }
    
    @objc func gotoSignIn(){
        dismiss(animated: true, completion: nil)
        let signVC = ViewController()
        self.present(signVC, animated: true, completion: nil)
    }
    
    
    func getDoneButton() -> UIBarButtonItem {
        let doneItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action:#selector(self.myDoneFunction))
        return doneItem
    }
    
    func getBackButton() -> UIBarButtonItem {
        let backButton = UIButton(type: .custom)
        backButton.setImage(UIImage(named: "back"), for: UIControl.State.normal)
        backButton.setTitle("Back", for: .normal)
        backButton.setTitleColor(backButton.tintColor, for: .normal)
        backButton.addTarget(self, action: #selector(self.backButtonPressed), for: UIControl.Event.touchUpInside)
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.heightAnchor.constraint(equalToConstant: 45).isActive = true
        backButton.widthAnchor.constraint(equalToConstant: 75).isActive = true
        return UIBarButtonItem(customView: backButton)
    }
    
    @objc func backButtonPressed(){
        print("back")
    }
    
    @objc func myDoneFunction(){
        print("done")
    }
    

}
