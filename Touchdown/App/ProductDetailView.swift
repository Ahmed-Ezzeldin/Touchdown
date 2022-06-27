//
//  ProductDetailView.swift
//  Touch Down
//
//  Created by Codemaker on 27/06/2022.
//

import SwiftUI

struct ProductDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            // NavBar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top , UIApplication.shared.windows.first?.safeAreaInsets.top )
//                .padding(.top , UIWindowScene.windows.first?.safeAreaInsets.top )
            // Header
            HeaderDetailView()
                .padding(.horizontal)
            // Detail Top Part
                TopPartDetailView()
                .padding(.horizontal)
            // Rattings + Sized
            // Description
            // Quantity + Favorite
            // Add to cart
            Spacer()
            
            
            
        })
        .ignoresSafeArea(.all , edges: .all)
        .background(
            Color(
                red: sampleProduct.red ,
                green: sampleProduct.green ,
                blue: sampleProduct.blue
            ).ignoresSafeArea(.all , edges: .all)
        )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
