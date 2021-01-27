//
//  LineSeparatorView.swift
//  Lesson 5 Layouts Insta
//
//  Created by Korlan Omarova on 27.01.2021.
//

import UIKit

class LineSeparatorView: UIView {

    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.textAlignment = .center
        label.textColor = .gray
        label.text = "или"
        return label
    }()
    
    let horizontalLineOne = UIView()
    let horizontalLineTwo = UIView()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupViews()
        setStyle()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupViews(){
        [titleLabel, horizontalLineOne, horizontalLineTwo].forEach {
            self.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        horizontalLineOne.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        horizontalLineOne.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        horizontalLineOne.heightAnchor.constraint(equalToConstant: 1).isActive = true
        horizontalLineOne.trailingAnchor.constraint(equalTo: titleLabel.leadingAnchor, constant: -30).isActive = true
        
        titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        horizontalLineTwo.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        horizontalLineTwo.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        horizontalLineTwo.heightAnchor.constraint(equalToConstant: 1).isActive = true
        horizontalLineTwo.leadingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: 30).isActive = true
        
    }
    
    private func setStyle(){
        horizontalLineOne.layer.borderWidth = 1.0
        horizontalLineOne.layer.borderColor = CGColor(red: 220/255, green: 220/255, blue: 222/255, alpha: 1)
        
        horizontalLineTwo.layer.borderWidth = 1.0
        horizontalLineTwo.layer.borderColor = CGColor(red: 220/255, green: 220/255, blue: 222/255, alpha: 1)
    }

}
