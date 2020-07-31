//
//  CustomButton.swift
//  uiTestApp
//
//  Created by Diana Tsarkova on 30.07.2020.
//  Copyright © 2020 Diana Tsarkova. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    private var gradLayer = CAGradientLayer()
    private var label = UILabel()
    func configure(active: Bool = false, text: String, green: Bool = false) {
        if active {
            gradLayer.colors = [AppColor.purpleLight.cgColor, AppColor.pink.cgColor]
        }
        else {
            backgroundColor = AppColor.liteGray
            label.textColor = .darkGray
        }
        if green { gradLayer.colors = [AppColor.green.cgColor, AppColor.liteGreen.cgColor] }
        label.text = text
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(label.prepare())
        label.pin(to: self)
        label.font = .systemFont(ofSize: 18)
        label.textColor = .white
        label.textAlignment = .center
    }
    
    override func layoutSubviews() {
        gradLayer.locations = [0, 0.5]
        gradLayer.startPoint = CGPoint(x: 0.25, y: 0.5)
        gradLayer.endPoint = CGPoint(x: 0.75, y: 0.5)
        gradLayer.frame = bounds
        gradLayer.cornerRadius = frame.height / 2 + 0.1
        layer.insertSublayer(gradLayer, at: 0)
        layer.cornerRadius = frame.height / 2
        layer.borderWidth = 4
        layer.borderColor = AppColor.liteGray.cgColor
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 43).isActive = true
        widthAnchor.constraint(greaterThanOrEqualToConstant: 98).isActive = true
        widthAnchor.constraint(lessThanOrEqualToConstant: 126).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
