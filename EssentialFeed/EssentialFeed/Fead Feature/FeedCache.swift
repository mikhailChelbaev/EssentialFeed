//
//  FeedCache.swift
//  EssentialFeed
//
//  Created by Mikhail on 04.05.2022.
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
