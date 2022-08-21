//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Mikhail on 05.04.2022.
//

import Foundation

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?
    
    public var hasLocation: Bool {
        return location != nil
    }
}
