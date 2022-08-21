//
//  ImageCommentsPresenter.swift
//  EssentialFeed
//
//  Created by Mikhail on 21.08.2022.
//

public final class ImageCommentsPresenter {
    public static var title: String {
        return NSLocalizedString(
            "IMAGE_COMMENTS_VIEW_TITLE",
            tableName: "ImageComments",
            bundle: Bundle(for: FeedPresenter.self),
            comment: "Title for the image comments view")
    }
}
