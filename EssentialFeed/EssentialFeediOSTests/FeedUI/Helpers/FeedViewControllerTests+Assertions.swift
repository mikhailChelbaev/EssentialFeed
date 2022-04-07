//
//  FeedViewControllerTests+Assertions.swift
//  EssentialFeediOSTests
//
//  Created by Mikhail on 07.04.2022.
//

import XCTest
import EssentialFeed
import EssentialFeediOS

extension FeedUIIntegrationTests {

    func assertThat(_ sut: FeedViewController, isRendering feed: [FeedImage], file: StaticString = #file, line: UInt = #line) throws {
        guard sut.numberOfRenderedFeedImageViews() == feed.count else {
            return XCTFail("Expected \(feed.count) images, got \(sut.numberOfRenderedFeedImageViews()) instead", file: file, line: line)
        }
        
        try feed.enumerated().forEach { index, image in
            try assertThat(sut, hasViewConfiguredFor: image, at: index, file: file, line: line)
        }
    }
    
    func assertThat(_ sut: FeedViewController, hasViewConfiguredFor image: FeedImage, at index: Int, file: StaticString = #file, line: UInt = #line) throws {
        let cell = try XCTUnwrap(sut.feedImageView(at: index) as? FeedImageCell)
        
        let shouldLocationBeVisible = (image.location != nil)
        XCTAssertEqual(cell.isShowingLocation, shouldLocationBeVisible, "Expected `isShownLocation` to be \(shouldLocationBeVisible) for image view at index (\(index))", file: file, line: line)
        
        XCTAssertEqual(cell.locationText, image.location, "Expected location text to be \(String(describing: image.location)) for image view at index (\(index))", file: file, line: line)
        
        XCTAssertEqual(cell.descriptionText, image.description, "Expected description text to be \(String(describing: image.description)) for image view at index (\(index))", file: file, line: line)
    }
    
}

