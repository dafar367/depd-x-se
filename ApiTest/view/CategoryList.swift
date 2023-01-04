//
//  CategoryList.swift
//  ApiTest
//
//  Created by atallah dafa on 03/01/23.
//

import SwiftUI

struct CategoryList: View {
    var body: some View {
        NavigationView {
            List {
                //change
                NavigationLink(destination: CategoryView(currentCategory: "Gunung")) {
                    Text("Gunung")
                }
                NavigationLink(destination: CategoryView(currentCategory: "Hutan")) {
                    Text("Hutan")
                }
                NavigationLink(destination: CategoryView(currentCategory: "Pantai")) {
                    Text("Pantai")
                }
                NavigationLink(destination: CategoryView(currentCategory: "Museum")) {
                    Text("Museum")
                }
                
            }
                .navigationBarTitle(Text("Category"))
        }
    }
}

struct CategoryList_Previews: PreviewProvider {
    static var previews: some View {
        CategoryList()
    }
}
