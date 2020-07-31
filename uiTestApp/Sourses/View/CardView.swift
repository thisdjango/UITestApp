//
//  CardView.swift
//  uiTestApp
//
//  Created by Diana Tsarkova on 30.07.2020.
//  Copyright © 2020 Diana Tsarkova. All rights reserved.
//

import UIKit

class CardView: UIView {
    private let titleLabel = UILabel()
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "secure")
        return imageView
    }()
    private let unsafeLabel = CustomLabel()
    private let dbVersionLabel = CustomLabel()
    private let totalLabel = CustomLabel()
    private let checkLabel = UILabel()
    override init(frame: CGRect) {
        super.init(frame: frame)
        layoutIfNeeded()
        addSubview(imageView.prepare())
        addSubview(titleLabel.prepare())
        addSubview(unsafeLabel.prepare())
        addSubview(dbVersionLabel.prepare())
        addSubview(totalLabel.prepare())
        addSubview(checkLabel.prepare())

        titleLabel.text = "Web Surfing is protected"
        titleLabel.textColor = AppColor.green
        titleLabel.font = UIFont.systemFont(ofSize: 20)
        
        unsafeLabel.configure(left: "Unsafe websites blocked:", right:  "145")
        dbVersionLabel.configure(left: "Database version:", right:  "1.25")
        totalLabel.configure(left: "Total sites in db:", right:  "2663599")
        
        imageView.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        imageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        titleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 5).isActive = true
        titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        unsafeLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5).isActive = true
        unsafeLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        unsafeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        unsafeLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        
        dbVersionLabel.topAnchor.constraint(equalTo: unsafeLabel.bottomAnchor, constant: 5).isActive = true
        dbVersionLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        dbVersionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        dbVersionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        
        totalLabel.topAnchor.constraint(equalTo: dbVersionLabel.bottomAnchor, constant: 5).isActive = true
        totalLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        totalLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        totalLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        
        checkLabel.text = "Check Database Updates"
        checkLabel.font = UIFont.systemFont(ofSize: 15)
        
        checkLabel.topAnchor.constraint(equalTo: totalLabel.bottomAnchor, constant: 10).isActive = true
        checkLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        checkLabel.bottomAnchor.constraint(equalTo: bottomAnchor,  constant: -22).isActive = true
        checkLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        checkLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
    }
    
    override func layoutSubviews() {
        backgroundColor = AppColor.liteGray
        layer.cornerRadius = 30
        layer.borderWidth = 7
        layer.borderColor = UIColor.clear.cgColor
        layer.shadowColor = UIColor.lightGray.cgColor
        layer.shadowOpacity = 0.48
        layer.shadowRadius = 20
        layer.shadowOffset = CGSize(width: 10, height: 10)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
