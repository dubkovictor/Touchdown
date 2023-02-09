//
//  Shop.swift
//  Touchdown
//
//  Created by Victor on 09.02.2023.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingproduct: Bool = false
    @Published var selectedProduct: ProductModel? = nil
    
}
