//
//  FeedImageDataStoreSpy.swift
//  EssentialFeedTests
//
//  Created by Mikhail on 15.04.2022.
//

import Foundation
import EssentialFeed

class FeedImageDataStoreSpy: FeedImageDataStore {
    enum Message: Equatable {
        case retrieve(dataFor: URL)
        case insert(data: Data, for: URL)
    }
    
    private var completions = [(FeedImageDataLoader.Result) -> Void]()
    private(set) var receivedMessages = [Message]()
    
    func insert(_ data: Data, for url: URL, completion: @escaping (InsertionResult) -> Void) {
        receivedMessages.append(.insert(data: data, for: url))
    }
    
    func retrieve(dataForURL url: URL, completion: @escaping (FeedImageDataLoader.Result) -> Void) {
        receivedMessages.append(.retrieve(dataFor: url))
        completions.append(completion)
    }
    
    func completeRetrieval(with error: Error, at index: Int = 0) {
        completions[index](.failure(error))
    }
    
    func completeRetrieval(with data: Data?, at index: Int = 0) {
        completions[index](.success(data))
    }
}
