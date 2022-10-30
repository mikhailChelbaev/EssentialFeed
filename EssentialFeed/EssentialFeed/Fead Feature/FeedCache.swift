//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Mikhail on 04.05.2022.
//

import Foundation

public protocol FeedCache {
    func save(_ feed: [FeedImage]) throws
}
