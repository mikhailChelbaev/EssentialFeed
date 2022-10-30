//
//  FeedImageDataStore.swift
//  EssentialFeed
//
//  Created by Mikhail on 14.04.2022.
//

import Foundation

public protocol FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws
    func retrieve(dataForURL url: URL) throws -> Data?
}
