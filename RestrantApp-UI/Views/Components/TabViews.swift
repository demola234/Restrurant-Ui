//
//  TabViews.swift
//  RestrantApp-UI
//
//  Created by Oluwasegun Kolawole Ademola on 20/08/2021.
//

import SwiftUI

struct TabViews: View {
    var body: some View {
        TabView {
                    Home()
                        .tabItem {
                            Image("Homes")
                            .resizable()
                            .renderingMode(.original)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 10, height: 10)
                            .font(.system(size: 10))
                        }
            Text("Bookmark Tab")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image("Categories")
                            .resizable()
                            .renderingMode(.original)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 10, height: 10)
                            .font(.system(size: 10))

                    }
             
                Text("Video Tab")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "video.circle.fill")
                    }
             
                Text("Profile Tab")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "person.crop.circle")
                    }
        }
        .ignoresSafeArea()
        .accentColor(Color("dark"))
        
        }
            
}

struct TabViews_Previews: PreviewProvider {
    static var previews: some View {
        TabViews()
    }
}
