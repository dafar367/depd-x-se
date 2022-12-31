//
//  HomeView.swift
//  ApiTest
//
//  Created by atallah dafa on 27/12/22.
//

import SwiftUI

struct HomeView: View {
    @State var places: [Place] = []
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
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 130),spacing: 25)],spacing: 20) {
                    // Display the item
                    ForEach(places) { place in
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
            .navigationTitle("dada")
            .fontWeight(.bold)
        }
        
        
        
        
    }
    
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
            
        }
    }
}
