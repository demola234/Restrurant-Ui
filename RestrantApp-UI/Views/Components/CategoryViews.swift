//
//  MenuViews.swift
//  RestrantApp-UI
//
//  Created by Oluwasegun Kolawole Ademola on 19/08/2021.
//

import SwiftUI

struct CategoryViews: View {
    var categories: Category
    
    var body: some View {
        VStack {
            VStack {
                Image(categories.image)
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
            }
            .frame(width: 70, height: 70)
            .background(Color(categories.color))
            .cornerRadius(10.0)
            .shadow(radius: 10, y: 2)
            
            Text(categories.title)
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundColor(Color("dark"))
                .lineSpacing(64.0)
                .padding(.top, 8.0)
        }
    }
}
