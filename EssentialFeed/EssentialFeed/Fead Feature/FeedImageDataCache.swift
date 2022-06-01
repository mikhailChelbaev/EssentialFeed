//
//  FeedImageDataCache.swift
//  EssentialFeed
//
//  Created by Mikhail on 02.06.2022.
//

import Foundation

public protocol FeedImageDataCache {
    typealias Result = Swift.Result<Void, Error>
    
    func save(_ data: Data, for url: URL, completion: @escaping (Result) -> Void)
}
