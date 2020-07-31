//
//  CardView.swift
//  uiTestApp
//
//  Created by Diana Tsarkova on 30.07.2020.
//  Copyright © 2020 Diana Tsarkova. All rights reserved.
//

import UIKit

class CardView: UIView {
    private let stackView: UIStackView = {
        let stack = UIStackView()
        stack.alignment = .center
        stack.axis = .vertical
        stack.distribution = .fillProportionally
        stack.spacing = 9
        return stack
    }()
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "secure")
        return imageView
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        layoutIfNeeded()
        addSubview(stackView.prepare())
        stackView.addArrangedSubview(imageView.prepare())
    }
    
    override func layoutSubviews() {
        backgroundColor = AppColor.liteGray
        clipsToBounds = true
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
