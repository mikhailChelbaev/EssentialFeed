//
//  FeedImageViewModel.swift
//  EssentialFeediOS
//
//  Created by Mikhail on 05.04.2022.
//

import Foundation

struct FeedImageViewModel<Image> {
    let description: String?
    let location: String?
    let image: Image?
    let isLoading: Bool
    let shouldRetry: Bool
    
    var hasLocation: Bool {
        return location != nil
    }
}
