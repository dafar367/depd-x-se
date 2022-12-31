//
//  DetailCardController.swift
//  ApiTest
//
//  Created by atallah dafa on 29/12/22.
//

import SwiftUI
import CoreLocation

struct DetailCardView: View {
    let placesItem:Place
    
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: placesItem.latitude,
            longitude: placesItem.longitude
        )
    }
    
    var body: some View {
        ScrollView{
            
            VStack(spacing: 10){
                AsyncImage(url: URL(string: placesItem.image)){
                    phase in if let image = phase.image{
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            
                        
                    }
                }
                .frame(height: 300)
                .background(LinearGradient(gradient: Gradient(colors: [Color(.black).opacity(0.5), Color(.gray)]), startPoint: .top, endPoint: .bottom))
                
                Text(placesItem.name)
                    .font(.title)
                    .bold()
                Text(placesItem.star)
                    .font(.title)
                Text(placesItem.description)
                    .lineLimit(3)
                
                VStack(alignment: .leading,spacing: 25){
                    HStack{
                        Text("address")
                            .font(.subheadline)
                            .bold()
                            .padding(.horizontal,10)
                        
                            .frame(width:85)
                        
                        Text(placesItem.alamat)
                    }
                    HStack{
                        Text("phone")
                            .font(.subheadline)
                            .bold()
                            .padding(.horizontal, 10)
                        //                            .foregroundColor(Color("blueFont"))
                            .frame(width:85)
                        Text(placesItem.telp)
                        
                    }
                    HStack{
                        Text("category")
                            .font(.subheadline)
                            .bold()
                            .padding(.horizontal, 10)
                        //                            .foregroundColor(Color("blueFont"))
                            .frame(width:85)
                        Text(placesItem.category)
                    }
                    
                    
                    
                    
                }
                .padding(.vertical,15)
                
                VStack(alignment: .leading){
                    Text("Best Direction  :  ")
                        .font(.headline)
                        .bold()
                        .padding(.horizontal, 10)
                        .frame(width: 150)
                    DirectionController(places: placesItem)
                }
                    
                
                MapsController(coordinate: locationCoordinate)
                    .frame(height:200)
                    .frame(maxWidth:360)
                    .cornerRadius(30)

                
                
                
            }
            .padding(.horizontal,10)
            
            
        }
        .ignoresSafeArea(.container, edges: .top)
    }
    
    struct DetailCardController_Previews: PreviewProvider {
        static var previews: some View {
            DetailCardView(placesItem: Place.example1())
        }
    }
}
