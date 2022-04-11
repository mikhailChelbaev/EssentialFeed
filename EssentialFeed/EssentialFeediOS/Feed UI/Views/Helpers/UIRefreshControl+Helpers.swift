//
//  UIRefreshControl+Helpers.swift
//  EssentialFeediOS
//
//  Created by Mikhail on 11.04.2022.
//

import UIKit

extension UIRefreshControl {
    func update(isRefreshing: Bool) {
        isRefreshing ? beginRefreshing() : endRefreshing()
    }
}
