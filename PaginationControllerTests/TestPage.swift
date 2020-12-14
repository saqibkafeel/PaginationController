//
//  TestPage.swift
//  PaginationControllerTests
//
//  Created by Saqib Kafeel on 01.12.2020.
//  Copyright © 2020 Saqib Kafeel. All rights reserved.
//

import PaginationController

class TestPage: NSObject, Page {
    var hasNextPageValue: Bool

    init(hasNextPageValue: Bool) {
        self.hasNextPageValue = hasNextPageValue
        super.init()
    }

    var hasNextPage: Bool {
        return hasNextPageValue
    }
}
