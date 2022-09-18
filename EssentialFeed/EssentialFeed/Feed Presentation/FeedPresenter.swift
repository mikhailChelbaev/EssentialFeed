//
//  FeedPresenter.swift
//  EssentialFeediOS
//
//  Created by Mikhail on 06.04.2022.
//

import Foundation

public final class FeedPresenter {
    public static var title: String {
        return NSLocalizedString(
            "FEED_VIEW_TITLE",
            tableName: "Feed",
            bundle: Bundle(for: FeedPresenter.self),
            comment: "Title for the feed view")
    }
}
