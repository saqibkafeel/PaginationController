//
//  ResponsePage.swift
//  PaginationControllerDemo
//
//  Created by Saqib Kafeel on 01.12.2020.
//  Copyright © 2020 Saqib Kafeel. All rights reserved.
//

import PaginationController

struct ResponsePage: Page {
    var count: Int
    var page: Int
    var pageSize: Int
    var results: [String]
}

extension ResponsePage {

    var hasNextPage: Bool {
        return ((page + 1) * pageSize) + results.count < count
    }
}
