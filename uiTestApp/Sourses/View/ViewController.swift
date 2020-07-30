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
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: prepareButton(name: "others", to: #selector(leftButtonTapped)))
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: prepareButton(name: "info", to: #selector(rightButtonTapped)))
    }
    private func addSubviews() {
        view.addSubview(logoImageView.prepare())

    }
    private func configureSubviews() {
        logoImageView.image = UIImage(named: "shields")
    }
    private func configureAnchors() {
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(greaterThanOrEqualTo: view.topAnchor, constant: 16),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
    }
    private func prepareButton(name image: String, to selector: Selector) -> UIButton {
        let image = UIImage(named: image)
        let button = UIButton()
        button.setImage(image, for: .normal)
        button.addTarget(self, action: selector, for: .touchUpInside)
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

