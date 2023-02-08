//
//  ProductModel.swift
//  Touchdown
//
//  Created by Victor on 08.02.2023.
//

import Foundation

struct ProductModel: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let description: String
    let price: Int
    let color: [Double]
    
    var red: Double { return color[0] }
    var green: Double { return color[1] }
    var blue: Double { return color[2] }
    
    var formatterPrice: String { return "$\(price)" }
}
