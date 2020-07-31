//
//  Constants.swift
//  uiTestApp
//
//  Created by Diana Tsarkova on 30.07.2020.
//  Copyright © 2020 Diana Tsarkova. All rights reserved.
//

import UIKit

struct AppColor {
    
    static let background = UIColor(named: "Background") ?? UIColor()
    static let purpleLight = UIColor(named: "PurpleLight") ?? UIColor()
    static let pink = UIColor(named: "Pink") ?? UIColor()
    static let liteGray = UIColor(named: "LiteGray") ?? UIColor()
    static let green = UIColor(named: "Green") ?? UIColor()
    static let liteGreen = UIColor(named: "LightGreen") ?? UIColor()
}

extension UIView {
    public func prepare() -> UIView {
        translatesAutoresizingMaskIntoConstraints = false
        return self
    }
}

struct BothX {
    var layoutFrom: NSLayoutXAxisAnchor
    var layoutTo: NSLayoutXAxisAnchor
    var greater: CGFloat
    var less: CGFloat
}
struct BothY {
    var layoutFrom: NSLayoutYAxisAnchor
    var layoutTo: NSLayoutYAxisAnchor
    var greater: CGFloat
    var less: CGFloat
}

func rangeConstraint(_ sidesX: [BothX] = [], _ sidesY: [BothY] = []) {
    for side in sidesX {
        side.layoutFrom.constraint(greaterThanOrEqualTo: side.layoutTo, constant: side.greater).isActive = true
        side.layoutFrom.constraint(lessThanOrEqualTo: side.layoutTo, constant: side.less).isActive = true
    }
    for side in sidesY {
        side.layoutFrom.constraint(greaterThanOrEqualTo: side.layoutTo, constant: side.greater).isActive = true
        side.layoutFrom.constraint(lessThanOrEqualTo: side.layoutTo, constant: side.less).isActive = true
    }
}

extension UIView {
    @discardableResult
    func applyGradient(colours: [UIColor]) -> CAGradientLayer {
        return self.applyGradient(colours: colours, locations: nil)
    }

    @discardableResult
    func applyGradient(colours: [UIColor], locations: [NSNumber]?) -> CAGradientLayer {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.cgColor }
        gradient.locations = locations
        self.layer.insertSublayer(gradient, at: 0)
        return gradient
    }
    
    func pin(to view: UIView) {
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: view.topAnchor),
            bottomAnchor.constraint(equalTo: view.bottomAnchor),
            leadingAnchor.constraint(equalTo: view.leadingAnchor),
            trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}
