//
//  SharedLocalizationTests.swift
//  EssentialFeedTests
//
//  Created by Mikhail on 17.08.2022.
//

import XCTest
import EssentialFeed

final class SharedLocalizationTests: XCTestCase {
    
    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "Shared"
        let bundle = Bundle(for: LoadResourcePresenter<Any, DummyView>.self)
        
        assertLocalizedKeyAndValuesExist(in: bundle, table: table)
    }
    
    private class DummyView: ResourceView {
        func display(_ viewModel: Any) {}
    }
    
}

