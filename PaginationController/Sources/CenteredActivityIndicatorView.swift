//
//  CenteredActivityIndicatorView.swift
//  PaginationController
//
//  Created by Saqib Kafeel on 01.12.2020.
//  Copyright © 2020 Saqib Kafeel. All rights reserved.
//

import UIKit

open class CenteredActivityIndicatorView: UIView {

    // MARK: - UI Elements

    public let activityIndicatorView = UIActivityIndicatorView()

    // MARK: - Initializer

    public init(activityIndicatorStyle: UIActivityIndicatorView.Style) {
        super.init(frame: .zero)
        activityIndicatorView.style = activityIndicatorStyle
        setupActivityIndicatorView()
    }

    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - View Setup

    func setupActivityIndicatorView() {
        activityIndicatorView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(activityIndicatorView)
        NSLayoutConstraint.activate([
            activityIndicatorView.centerXAnchor.constraint(equalTo: centerXAnchor),
            activityIndicatorView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}

// MARK: - Loading Animatable

extension CenteredActivityIndicatorView: LoadingAnimatable {

    public func startAnimating() {
        activityIndicatorView.startAnimating()
    }

    public func stopAnimating() {
        activityIndicatorView.stopAnimating()
    }
}
