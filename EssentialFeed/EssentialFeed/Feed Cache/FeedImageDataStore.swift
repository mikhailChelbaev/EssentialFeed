//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Mikhail on 14.04.2022.
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>
    
    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
