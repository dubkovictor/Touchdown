//
//  CodableBundleExtension.swift
//  Touchdown
//
//  Created by Victor on 08.02.2023.
//

import Foundation

extension Bundle {
    
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("FATAL to locate \(file) in bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("FATAL to locate \(file) in bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("FATAL to locate \(file) in bundle")
        }
        
        return decodedData
    }
}
