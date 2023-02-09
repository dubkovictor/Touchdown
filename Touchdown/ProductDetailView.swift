//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Victor on 08.02.2023.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK: - PROPERTY
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.connectedScenes.flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
                    .first { $0.isKeyWindow }?.safeAreaInsets.top)
            HeaderDetailView()
                .padding(.horizontal)
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            VStack(alignment: .center, spacing: 0) {
                
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                ScrollView(.vertical, showsIndicators: false) {
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }//: SCROLL
                
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                AddToCartDetailView()
                    .padding(.bottom, 12)
            }//: VSTACK
            .padding(.horizontal)
            .background(Color.white.clipShape(CustomShape()).padding(.top, -105))
            //.cornerRadius(30)

        } //: VSTACK
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue))
        .ignoresSafeArea(.all, edges: .all)
    }
}

//MARK: - PREVIEW
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
