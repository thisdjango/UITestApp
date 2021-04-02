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

        titleLabel.text = "Web Surfing is protected good"
        titleLabel.textColor = AppColor.green
        titleLabel.font = UIFont.systemFont(ofSize: 20)
        
        checkLabel.text = "Check Database Updates"
        checkLabel.font = UIFont.systemFont(ofSize: 15)
        
        unsafeLabel.configure(left: "Unsafe websites blocked:", right:  "145")
        dbVersionLabel.configure(left: "Database version:", right:  "1.25")
        totalLabel.configure(left: "Total sites in db:", right:  "2663599")
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            imageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageView.heightAnchor.constraint(greaterThanOrEqualToConstant: 30),
            imageView.heightAnchor.constraint(lessThanOrEqualToConstant: 70),
            titleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 5),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            unsafeLabel.topAnchor.constraint(greaterThanOrEqualTo: titleLabel.bottomAnchor, constant: 15),
            unsafeLabel.topAnchor.constraint(lessThanOrEqualTo: titleLabel.bottomAnchor, constant: 60),
            unsafeLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            unsafeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            unsafeLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            unsafeLabel.bottomAnchor.constraint(greaterThanOrEqualTo: dbVersionLabel.topAnchor, constant: -25),
            unsafeLabel.bottomAnchor.constraint(lessThanOrEqualTo: dbVersionLabel.topAnchor, constant: -10),
            
            dbVersionLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            dbVersionLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 20),
            dbVersionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            dbVersionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            totalLabel.topAnchor.constraint(greaterThanOrEqualTo: dbVersionLabel.bottomAnchor, constant: 10),
            totalLabel.topAnchor.constraint(lessThanOrEqualTo: dbVersionLabel.bottomAnchor, constant: 25),
            totalLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            totalLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            totalLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            checkLabel.topAnchor.constraint(greaterThanOrEqualTo: totalLabel.bottomAnchor, constant: 20),
            checkLabel.topAnchor.constraint(lessThanOrEqualTo: totalLabel.bottomAnchor, constant: 60),
            checkLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            checkLabel.bottomAnchor.constraint(equalTo: bottomAnchor,  constant: -22),
            checkLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            checkLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        ])
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
