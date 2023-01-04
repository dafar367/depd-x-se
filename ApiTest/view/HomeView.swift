//
//  HomeView.swift
//  ApiTest
//
//  Created by atallah dafa on 27/12/22.
//

import SwiftUI

struct HomeView: View {
    @State var places: [Place] = []
    @State var searchText = ""
    @State var sear = false
    //    private var threeColumnGrid =
    
    var body: some View {
        //        NavigationView {
        //            ScrollView{
        //                placeCardController()
        //            }
        //            .navigationTitle("Recomend place")
        //        }
        //        .navigationViewStyle(.stack)
        //
        
        
        /*ini list kebawah*/
        //        VStack{
        //            List(places) { place in
        //                HStack {
        //                    CardViewController(places: place)
        //                }
        //            }
        //
        //            .onAppear {
        //                apiCall().getPlace { (places) in
        //                    self.places = places
        //                }
        //            }
        //        }
        
        NavigationView{
            ScrollView {
                VStack{
                    VStack{
                        TextField("Search", text: $searchText)
                            .padding(.leading,20)
                        
                            .padding()
                            .padding(.horizontal)
                            .background(Color(.systemGray4))
                            .cornerRadius(10)
                            .onTapGesture {
                                sear = true
                            }
                            .overlay(
                                HStack{
                                    Image(systemName: "magnifyingglass")
                                        .foregroundColor(.gray)
                                    Spacer()
                                    if sear{
                                        Button(action: {searchText = ""}, label: {Image(systemName: "xmark.circle.fill")
                                            .foregroundColor(.gray)})
                                    }
                                }.padding(.horizontal,20))
                    }
                    .padding(.horizontal,15)
                    .padding(.vertical,15)
                    
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 130),spacing: 25)],spacing: 20) {
                        // Display the item
                        //((destination).filter({"\($0)".contains(searchText)||searchText.isEmpty}))
                        ForEach((places).filter({"\($0)".contains(searchText)||searchText.isEmpty})) { place in
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
                .navigationTitle("Home")
                .fontWeight(.bold)
            }
        }
    }
    
}
    
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
        
    }
}

