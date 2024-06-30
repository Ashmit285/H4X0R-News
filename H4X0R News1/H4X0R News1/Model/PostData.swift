//
//  PostData.swift
//  H4X0R News1
//
//  Created by Ashmit Goel on 23/06/24.
//

import Foundation

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}

struct Results: Decodable {
    let hits: [Post]
}
