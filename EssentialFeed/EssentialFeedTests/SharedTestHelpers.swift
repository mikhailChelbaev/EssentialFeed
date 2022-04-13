//
//  SharedTestHelpers.swift
//  EssentialFeedTests
//
//  Created by Mikhail on 12.03.2022.
//

import Foundation

func anyNSError() -> NSError {
    NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    return URL(string: "https//:any-url.com")!
}

func anyData() -> Data {
    return Data("any data".utf8)
}
