//
//  CenteredActivityIndicatorViewTests.swift
//  PaginationControllerTests
//
//  Created by Saqib Kafeel on 01.12.2020.
//  Copyright © 2020 Saqib Kafeel. All rights reserved.
//

import XCTest
@testable import PaginationController

class CenteredActivityIndicatorViewTests: XCTestCase {

    func testForwardsAnimationToActivityIndicatorView() {
        let loadingView = CenteredActivityIndicatorView(activityIndicatorStyle: .gray)
        XCTAssertFalse(loadingView.activityIndicatorView.isAnimating)
        loadingView.startAnimating()
        XCTAssertTrue(loadingView.activityIndicatorView.isAnimating)
        loadingView.stopAnimating()
        XCTAssertFalse(loadingView.activityIndicatorView.isAnimating)
    }
}
