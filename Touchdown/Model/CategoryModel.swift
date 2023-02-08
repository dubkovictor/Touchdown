//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Victor on 08.02.2023.
//

import Foundation

struct CategoryModel: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
