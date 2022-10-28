//
//  FeedImageDataLoader.swift
//  EssentialFeediOS
//
//  Created by Mikhail on 04.04.2022.
//

import Foundation

public protocol FeedImageDataLoader {
    func loadImageData(from url: URL) throws -> Data
}
