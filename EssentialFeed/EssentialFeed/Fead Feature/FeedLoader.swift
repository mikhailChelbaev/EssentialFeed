//
//  FeedLoader.swift
//  EssentialFeed
//
//  Created by Mikhail on 12.02.2022.
//

import Foundation

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping (Result) -> Void)
}
