//
//  CategoryModel.swift
//  Touch Down
//
//  Created by Codemaker on 11/06/2022.
//

import Foundation


struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
