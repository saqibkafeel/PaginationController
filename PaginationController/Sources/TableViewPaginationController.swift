//
//  TableViewPaginationController.swift
//  trufflsChat
//
//  Created by Saqib Kafeel on 01.12.2020.
//  Copyright © 2019 Truffls GmbH. All rights reserved.
//

import UIKit

open class TableViewPaginationController<P: Page>: PaginationController<P> {

    // MARK: - UI Elements

    public var loadingView: LoadingAnimatable
    public let tableView: UITableView

    // MARK: - Initializer

    public init(tableView: UITableView, loadingView: LoadingAnimatable = CenteredActivityIndicatorView(activityIndicatorStyle: .gray), initialPage: P? = nil, loadResource: @escaping (_ after: P?, @escaping (P?) -> Void) -> Void) {
        self.tableView = tableView
        self.loadingView = loadingView
        super.init(loadResource: loadResource)
    }

    // MARK: - Pagination Life Cycle

    open override func loadingDidStart() {
        super.loadingDidStart()
        loadingView.frame.size.height = 44
        tableView.tableFooterView = loadingView
        loadingView.startAnimating()
    }

    open override func loadingDidStop() {
        super.loadingDidStop()
        tableView.tableFooterView = nil
        loadingView.stopAnimating()
    }
}
