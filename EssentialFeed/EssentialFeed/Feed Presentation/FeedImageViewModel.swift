//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Mikhail on 05.04.2022.
//

import Foundation

public struct FeedImageViewModel<Image> {
    public let description: String?
    public let location: String?
    public let image: Image?
    public let isLoading: Bool
    public let shouldRetry: Bool
    
    public var hasLocation: Bool {
        return location != nil
    }
}
