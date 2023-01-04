//
//  TabBar.swift
//  ApiTest
//
//  Created by atallah dafa on 04/01/23.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            CategoryList()
                .tabItem{
                    Label("Category", systemImage: "list.bullet")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
