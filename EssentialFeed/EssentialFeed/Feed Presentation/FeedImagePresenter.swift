//
//  FeedImagePresenter.swift
//  EssentialFeediOS
//
//  Created by Mikhail on 06.04.2022.
//

import Foundation

public final class FeedImagePresenter {
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location)
    }
}

