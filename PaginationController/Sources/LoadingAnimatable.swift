//
//  LoadingAnimatable.swift
//  PaginationController
//
//  Created by Saqib Kafeel on 01.12.2020.
//  Copyright © 2020 Saqib Kafeel. All rights reserved.
//

import UIKit

public protocol LoadingAnimatable: UIView {
    func startAnimating()
    func stopAnimating()
}
