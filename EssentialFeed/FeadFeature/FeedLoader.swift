//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Mikhail on 12.02.2022.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
