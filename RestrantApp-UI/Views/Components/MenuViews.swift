//
//  MenuViews.swift
//  RestrantApp-UI
//
//  Created by Oluwasegun Kolawole Ademola on 20/08/2021.
//

import SwiftUI

struct MenuViews: View {
    var menus: Menu
    var animation: Namespace.ID
    
    var body: some View {
        VStack {
            HStack {
                Text(menus.name)
                    .fontWeight(.bold)
                    .font(.caption)
                        .foregroundColor(.black)
                        .padding(.vertical,5)
                
                        .padding(.horizontal,20)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(5.0)
                Spacer(minLength: 0)
                }
            Image(menus.image)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .matchedGeometryEffect(id: "Image\(menus.id)", in: animation)
                .frame(width: 140, height: 120)
        }
        .frame(width: 160, height: 195)
        .background(LinearGradient(gradient: Gradient(colors: [Color(menus.color1), Color(menus.color2)]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(20.0)
        
    }
}

