////
////  placeCardView.swift
////  ApiTest
////
////  Created by atallah dafa on 27/12/22.
////
//
//import SwiftUI
//
//struct placeCardController: View {
//    //    @StateObject var viewModel = ViewModel()
//    @State var places: [Place] = []
////    let places: [Place]
//    //    @State private var places = [place]()
//    
//    var body: some View {
//        NavigationView{
//            LazyVGrid(columns:
//                        [GridItem(.adaptive(minimum: 140),spacing: 5)],
//                      spacing: 30){
//                ForEach(places){
//                    place in HStack{
//                        VStack{
//                            AsyncImage(url: URL(string: place.image)){
//                                phase in if let image = phase.image{
//                                    image.resizable()
//                                        .aspectRatio(contentMode: .fill)
//                                        .overlay(alignment: .bottom)
//                                    {
//                                        Text(place.name)
//                                            .font(.headline)
//                                            .foregroundColor(.white)
//                                            .shadow(color: .black, radius: 3, x: 0, y: 0)
//                                            .frame(maxWidth: 140)
//                                            .padding()
//                                    }
//                                }
//                            }
//                        }
//                    }
//                }
//                
//                //            .task {await viewModel.fetch()}
//            }
//        }
//        //        VStack{
//        //            if i.urlImage != ""{
//        //
//        //            }
//        //        }
//    }
//    
//    struct placeCardView_Previews: PreviewProvider {
//        static var previews: some View {
//            placeCardController()
//        }
//    }
//}
