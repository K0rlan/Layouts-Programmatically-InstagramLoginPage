//
//  ViewController.swift
//  Lesson 5 Layouts Insta
//
//  Created by Korlan Omarova on 27.01.2021.
//

import UIKit

class ViewController: UIViewController {
   
    //Mark: - UI Elements -
    
    lazy var closeButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "close"), for: .normal)
        button.addTarget(self, action: #selector(closeButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "intagram")
        imageView.contentMode = .scaleAspectFit
        return imageView
        
    }()
    
    lazy var loginTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Телефон, имя пользователя или эл.адрес"
        textField.font = .systemFont(ofSize: 14)
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 1
        textField.layer.borderColor = CGColor(red: 220/255, green: 220/255, blue: 222/255, alpha: 1)
        textField.layer.cornerRadius = 8
        textField.backgroundColor = UIColor(cgColor: CGColor(red: 250/255, green: 250/255, blue: 250/255, alpha: 1))
        return textField
    }()
    
    var iconClick = true
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Пароль"
        textField.font = .systemFont(ofSize: 14)
        textField.borderStyle = .roundedRect
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 8
        textField.layer.borderColor = CGColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1)
        textField.backgroundColor = UIColor(cgColor: CGColor(red: 250/255, green: 250/255, blue: 250/255, alpha: 1))
        textField.isSecureTextEntry = true
        
        let btnPassword = UIButton(frame: CGRect(x: 12.5, y: 12.5, width: 25, height: 25))
        let informationImage = UIImage(named: "invisible")
        btnPassword.setImage(informationImage, for: .normal)
        btnPassword.contentMode = .scaleAspectFit
        btnPassword.addTarget(self, action: #selector(passwordButtonPressed), for: .touchUpInside)
        let separatorView = UIView(frame: CGRect(x: 0, y: 0, width: 60, height: 50))
        separatorView.addSubview(btnPassword)
        textField.rightViewMode = .always
        textField.rightView = separatorView
        
        
        return textField
    }()
    
    lazy var forgetPassword: UIButton = {
        let button = UIButton()
        button.setTitle("Забыли пароль?", for: .normal)
        button.setTitleColor(UIColor(cgColor: CGColor(red: 33/255, green: 150/255, blue: 243/255, alpha: 1)), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.addTarget(self, action: #selector(forgetPasswordPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var enterButton: UIButton = {
        let button = UIButton()
        button.setTitle("Войти", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 14)
        button.backgroundColor = UIColor(cgColor: CGColor(red: 142/255, green: 200/255, blue: 245/205, alpha: 1))
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(enterButtonPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var separatorLineView: LineSeparatorView = {
        let view = LineSeparatorView()
        return view
    }()
    
    lazy var horizontalLine: SeparatorViews = {
        let view = SeparatorViews()
        return view
    }()
    
    lazy var enterByFacebookView: EnterByFacebookView = {
        let view = EnterByFacebookView()
        return view
    }()
    
    lazy var registrationView: RegistrationView = {
        let view = RegistrationView()
        return view
    }()
    
    //Mark: - Separators Views -
    
    lazy var firstSeparatorView: SeparatorViews = {
        let view = SeparatorViews()
        return view
    }()
    
    lazy var secondSeparatorView: SeparatorViews = {
        let view = SeparatorViews()
        return view
    }()
    
    lazy var thirdSeparatorView: SeparatorViews = {
        let view = SeparatorViews()
        return view
    }()
    
    lazy var fourthSeparatorView: SeparatorViews = {
        let view = SeparatorViews()
        return view
    }()
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        setupStyleForLine()
        setupViews()
    }
    
    private func setupViews() {
        [closeButton, logoImageView, loginTextField, passwordTextField, enterButton, forgetPassword, horizontalLine, separatorLineView, enterByFacebookView, registrationView, firstSeparatorView, secondSeparatorView, thirdSeparatorView, fourthSeparatorView].forEach {
            self.view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        closeButton.widthAnchor.constraint(equalToConstant: 20).isActive = true
        closeButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
        closeButton.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -15).isActive = true
        closeButton.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 15).isActive = true
        
        firstSeparatorView.topAnchor.constraint(equalTo: closeButton.bottomAnchor).isActive = true
        firstSeparatorView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.125).isActive = true
        
        logoImageView.heightAnchor.constraint(equalToConstant: 75).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        logoImageView.topAnchor.constraint(equalTo: firstSeparatorView.bottomAnchor).isActive = true
        
        secondSeparatorView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor).isActive = true
        secondSeparatorView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.04).isActive = true
        
        loginTextField.topAnchor.constraint(equalTo: secondSeparatorView.bottomAnchor).isActive = true
        loginTextField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 25).isActive = true
        loginTextField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -25).isActive = true
        loginTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 10).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 25).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -25).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        forgetPassword.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 15).isActive = true
        forgetPassword.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -25).isActive = true
        
        thirdSeparatorView.topAnchor.constraint(equalTo: forgetPassword.bottomAnchor).isActive = true
        thirdSeparatorView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.025).isActive = true
        
        enterButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 25).isActive = true
        enterButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -25).isActive = true
        enterButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        enterButton.topAnchor.constraint(equalTo: thirdSeparatorView.bottomAnchor).isActive
            = true
        
        separatorLineView.topAnchor.constraint(equalTo: enterButton.bottomAnchor, constant: 30).isActive = true
        separatorLineView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 25).isActive = true
        separatorLineView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -25).isActive = true
        separatorLineView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        fourthSeparatorView.topAnchor.constraint(equalTo: separatorLineView.bottomAnchor).isActive = true
        fourthSeparatorView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.03).isActive = true
        
        enterByFacebookView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        enterByFacebookView.topAnchor.constraint(equalTo: fourthSeparatorView.bottomAnchor).isActive = true
        enterByFacebookView.heightAnchor.constraint(equalToConstant: 35).isActive = true
        enterByFacebookView.setParamaters(imageName: "facebook", title: "Войти через Facebook")
        
        horizontalLine.bottomAnchor.constraint(equalTo: registrationView.topAnchor, constant: -8).isActive = true
        horizontalLine.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 25).isActive = true
        horizontalLine.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -25).isActive = true
        horizontalLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        registrationView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        registrationView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -8).isActive = true
        registrationView.setParamaters(buttonName: "Зарегистрируйтесь.", title: "У вас нет аккаунта?")
    }
    
    private func setupStyleForLine(){
        horizontalLine.layer.borderWidth = 1.0
        horizontalLine.layer.borderColor = CGColor(red: 220/255, green: 220/255, blue: 222/255, alpha: 1)
        
    }
    
    //Mark: - Actions -

    @objc func passwordButtonPressed(sender: UIButton){
        let passwordHideImage = UIImage(named: "invisible")
        let passwordVisibleImage = UIImage(named: "eye")
        
        iconClick = !iconClick
        if iconClick == false {
            passwordTextField.isSecureTextEntry = false
            sender.setImage(passwordVisibleImage, for: .normal)
        } else {
            passwordTextField.isSecureTextEntry = true
            sender.setImage(passwordHideImage, for: .normal)
        }
    }
    
    @objc func enterButtonPressed(sender: UIButton){
        let password = NSPredicate(format: "SELF MATCHES %@ ", "(^[A-Z])(?=.*[a-zA-Z0-9]).{7,}$")
        let alertViewController = UIAlertController(title: "Error", message: "Wrong password or login!", preferredStyle: .alert)
        alertViewController.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        if loginTextField.text == "" || passwordTextField.text == "" || !password.evaluate(with: passwordTextField.text){
            present(alertViewController, animated: true)
        }else{
            print(#function)
        }
    }
    
    @objc func forgetPasswordPressed(sender: UIButton){
        print(#function)
    }
    
    
    
    @objc func closeButtonPressed(sender: UIButton){
        print(#function)
        exit(0)
    }
    
    
}

