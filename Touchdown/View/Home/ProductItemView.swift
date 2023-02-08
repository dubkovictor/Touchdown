//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Victor on 08.02.2023.
//

import SwiftUI

struct ProductItemView: View {
    //MARK: - PROPERTY
    let product: ProductModel
    
    //MARK: - BODY
    var body: some View {
        VStack (alignment: .leading, spacing: 6, content: {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            } //: ZSTACK
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(product.formatterPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
        }) //: VSTACK
    }
}

//MARK: - PREVIEW
struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
