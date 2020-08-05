//
//  CustomLabel.swift
//  uiTestApp
//
//  Created by Diana Tsarkova on 31.07.2020.
//  Copyright © 2020 Diana Tsarkova. All rights reserved.
//

import UIKit

class CustomLabel: UIView {
    private var leftLabel = UILabel()
    private var rightLabel = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        layoutConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(left: String = "Yeap", right: String = "000") {
        
        var paragraph = NSMutableParagraphStyle()
        paragraph.alignment = .left
        
        var attr = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15, weight: .light), NSAttributedString.Key.paragraphStyle: paragraph]
        leftLabel.attributedText = NSMutableAttributedString(string: left, attributes: attr)
        
        paragraph = NSMutableParagraphStyle()
        paragraph.alignment = .right
        
        attr = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15, weight: .light),
                NSAttributedString.Key.paragraphStyle: paragraph,
                NSAttributedString.Key.foregroundColor: AppColor.green]
        rightLabel.attributedText = NSAttributedString(string: right, attributes: attr)
        
    }
    private func layoutConstraints() {
        addSubview(leftLabel.prepare())
        addSubview(rightLabel.prepare())
        NSLayoutConstraint.activate([
        
            leftLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            leftLabel.topAnchor.constraint(equalTo: topAnchor),
            leftLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            rightLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            rightLabel.topAnchor.constraint(equalTo: topAnchor),
            rightLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            leftLabel.trailingAnchor.constraint(greaterThanOrEqualTo: rightLabel.leadingAnchor, constant: 15)
        ])
    }
}
