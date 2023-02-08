//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Victor on 08.02.2023.
//

import SwiftUI

struct HeaderDetailView: View {
    //MARK: - PROPERTY
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Protected Gear")
            Text(sampleProduct.name)
                .font(.largeTitle)
                .foregroundColor(.black)
        } //: VSTACK
        .foregroundColor(.white)
        
    }
}

//MARK: - PREVIEW
struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
