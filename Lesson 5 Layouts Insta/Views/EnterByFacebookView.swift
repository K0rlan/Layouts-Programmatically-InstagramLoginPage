//
//  EnterByFacebookView.swift
//  Lesson 5 Layouts Insta
//
//  Created by Korlan Omarova on 27.01.2021.
//

import UIKit

class EnterByFacebookView: UIView {
    
    lazy var leftImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor =  UIColor(cgColor: CGColor(red: 33/255, green: 150/255, blue: 243/255, alpha: 1))
        return label
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupViews()
        setAction()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setParamaters(imageName: String, title: String){
        self.titleLabel.text = title
        self.leftImageView.image = UIImage(named: imageName)!
    }
    private func setupViews(){
        [leftImageView, titleLabel].forEach {
            self.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        leftImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        leftImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8).isActive = true
        leftImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8).isActive = true
        leftImageView.widthAnchor.constraint(equalToConstant: 32).isActive = true
        
        titleLabel.leadingAnchor.constraint(equalTo: leftImageView.trailingAnchor, constant: 8).isActive = true
        titleLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -18 ).isActive = true
    }
    
    private func setAction(){
        let gesture = UITapGestureRecognizer(target: self, action: #selector(enterByFacebookPressed(sender:)))
        self.addGestureRecognizer(gesture)
    }
    
    @objc private func enterByFacebookPressed(sender: UITapGestureRecognizer){
        print(#function)
    }
    
}
