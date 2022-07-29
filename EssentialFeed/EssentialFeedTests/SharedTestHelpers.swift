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

func makeItemsJSON(_ items: [[String: Any]]) -> Data {
    let itemsJSON = ["items": items]
    let json = try! JSONSerialization.data(withJSONObject: itemsJSON)
    return json
}

extension HTTPURLResponse {
    convenience init(statusCode: Int) {
        self.init(url: anyURL(), statusCode: statusCode, httpVersion: nil, headerFields: nil)!
    }
}
