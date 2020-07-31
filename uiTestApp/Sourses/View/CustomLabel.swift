//
//  CustomLabel.swift
//  uiTestApp
//
//  Created by Diana Tsarkova on 31.07.2020.
//  Copyright © 2020 Diana Tsarkova. All rights reserved.
//

import UIKit

class CustomLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(left: String = "Yeap", right: String = "000") {
        
        var paragraph = NSMutableParagraphStyle()
        paragraph.alignment = .left
        
        var attr = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15, weight: .light), NSAttributedString.Key.paragraphStyle: paragraph]
        let attrStr = NSMutableAttributedString(string: left, attributes: attr)
        
        paragraph = NSMutableParagraphStyle()
        paragraph.alignment = .right
        
        attr = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15, weight: .light),
                NSAttributedString.Key.paragraphStyle: paragraph,
                NSAttributedString.Key.foregroundColor: AppColor.green]
        let attrStr2: NSAttributedString = NSAttributedString(string: right, attributes: attr)
        
        attrStr.append(attrStr2)
        
        attributedText = attrStr
    }

}
