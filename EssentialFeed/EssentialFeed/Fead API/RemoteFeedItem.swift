//
//  RemoteFeedItem.swift
//  EssentialFeed
//
//  Created by Mikhail on 08.03.2022.
//

import Foundation

 struct RemoteFeedItem: Decodable {
     let id: UUID
     let description: String?
     let location: String?
     let image: URL
}
