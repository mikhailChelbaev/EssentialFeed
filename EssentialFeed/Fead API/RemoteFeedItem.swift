//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Mikhail on 08.03.2022.
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
}
