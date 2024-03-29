//
//  ProductItemView.swift
//  Touch Down
//
//  Created by Codemaker on 13/06/2022.
//

import SwiftUI

struct ProductItemView: View {
    let product: Product
    var body: some View {
        VStack (alignment: .leading, spacing: 6 ,content: {
            // Photo
            ZStack{
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(Color(red: product.red, green: product.green , blue: product.blue))
            .cornerRadius(12)
            
            // Name
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            // Price
            Text(product.formatedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
        })
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
        
    }
}
