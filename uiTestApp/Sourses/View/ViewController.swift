//
//  ViewController.swift
//  uiTestApp
//
//  Created by Diana Tsarkova on 30.07.2020.
//  Copyright © 2020 Diana Tsarkova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Private Properties
    private let logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "shields")
        return imageView
    }()
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    // MARK: - Private Methods
    private func configureView() {
        view.backgroundColor = AppColor.background
        if #available(iOS 13.0, *) {
            view.overrideUserInterfaceStyle = .light
        }
        configureNavigationBar()
        addSubviews()
        configureSubviews()
        configureAnchors()
    }
    private func configureNavigationBar() {
        let navigationBar = navigationController?.navigationBar
        navigationItem.leftBarButtonItem = prepareButton(name: "others", action: leftButtonTapped)
        navigationItem.rightBarButtonItem = prepareButton(name: "info", action: rightButtonTapped)
    }
    private func addSubviews() {
        
    }
    private func configureSubviews() {
        
    }
    private func configureAnchors() {
        
    }
    private func prepareButton(name image: String, action: (()->Void)) -> UIButton {
        let image = UIImage(named: image)
        let button = UIButton()
        button.setImage(leftImage, for: .normal)
        button.addTarget(self, action: #selector(action), for: .touchUpInside)
        return button
    }
    // MARK: - Objc Methods
    @objc func leftButtonTapped() {
        // logic
    }
    @objc func rightButtonTapped() {
        // logic
    }
}

