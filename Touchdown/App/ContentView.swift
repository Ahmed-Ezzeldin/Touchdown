//
//  ContentView.swift
//  Touchdown
//
//  Created by Codemaker on 10/06/2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: ========================== Properites
    // MARK: ========================== Body
    var body: some View {
        ZStack {
            VStack (spacing: 0){
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication
                        .shared
                        .connectedScenes
                        .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
                        .first { $0.isKeyWindow }?.safeAreaInsets.top)
                    .background(.white)
                    .shadow(color: Color.black.opacity(0.1) , radius: 5 , x: 0, y: 5 )
                
                ScrollView(.vertical , showsIndicators: false, content: {
                    VStack(spacing: 0) {
                        FeaturedTabView()
                            .frame(height: UIScreen.main.bounds.width / 1.5)
                            .padding(.vertical, 20)
                        CategoryGridView()
                        
                        TitleView(title: "Helmets")
                        LazyVGrid(columns: gridLayout,spacing: 15 ,content: {
                            ForEach(products) {product in
                                ProductItemView(product: product)
                            }
                        })
                        .padding(15)
                        
                        FooterView()
                            .padding(.horizontal)
                    }
                })
            }
            .background(colorBackground.ignoresSafeArea(.all ,edges: .all))
        }
        .ignoresSafeArea(.all ,edges: .top )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
