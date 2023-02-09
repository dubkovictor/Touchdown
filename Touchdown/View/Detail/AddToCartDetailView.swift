//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Victor on 09.02.2023.
//

import SwiftUI

struct AddToCartDetailView: View {
    //MARK: - PROPERTY
    
    //MARK: - BODY
    var body: some View {
        Button(action: {}) {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            
            Spacer()
        }//: BUTTON
        .padding(15)
        .background(Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue))
        .clipShape(Capsule())
    }
}

//MARK: - PREVIEW
struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
