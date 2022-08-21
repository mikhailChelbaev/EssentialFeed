//
//  ImageCommentsLocalizationTests.swift
//  EssentialFeedTests
//
//  Created by Mikhail on 21.08.2022.
//

import XCTest
import EssentialFeed

class ImageCommentsLocalizationTests: XCTestCase {
    
    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "ImageComments"
        let bundle = Bundle(for: ImageCommentsPresenter.self)
        
        assertLocalizedKeyAndValuesExist(in: bundle, table: table)
    }
    
}
