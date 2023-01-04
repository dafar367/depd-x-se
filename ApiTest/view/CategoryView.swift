//
//  CategoryView.swift
//  ApiTest
//
//  Created by atallah dafa on 01/01/23.
//

import SwiftUI

struct CategoryView: View {
    @State var places: [Place] = []
    var currentCategory=""
    //    let airTerjun = Place.filter{$0.category.contains("Air terjun")}
    
    var body: some View {
        
//        ini list kebawah
        ScrollView{
            VStack{
                //                List((places).filter({$0.category.contains(currentCategory)})) { place in
                //                    HStack {
                //                        CardViewController(places: place)
                //                    }
                //                }
                //
                //                .onAppear {
                //                    apiCall().getPlace { (places) in
                //                        self.places = places
                //                    }
                //                }
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 130),spacing: 25)],spacing: 20) {
                    // Display the item
                    //((destination).filter({"\($0)".contains(searchText)||searchText.isEmpty}))
                    ForEach((places).filter({$0.category.contains(currentCategory)})) { place in
                        NavigationLink(destination: DetailCardView(placesItem: place)){
                            CardViewController(places: place)
                        }
                    }
                }
                .padding(.horizontal, 15)
                .onAppear{
                    apiCall().getPlace { (places) in
                        self.places = places
                    }
                }
            }
        }
        
    }
    
}


struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(currentCategory:"")
    }
}


/*
 ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
 CategoryRow(categoryName: key, items: modelData.categories[key]!)
 }
 */

