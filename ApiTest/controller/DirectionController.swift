//
//  MapController.swift
//  ApiTest
//
//  Created by atallah dafa on 29/12/22.
//

import SwiftUI

struct DirectionController: View {
    
    let places:Place
    
    var body: some View {
        HStack{
            VStack{
                Image(systemName: places.direction1Icon)
                    .scaleEffect(1.4)
                    .padding(.vertical,0.1)
                Text(places.direction1Name)
            }
            Color
                .black
                .frame(width: 700 / UIScreen.main.scale, height: 3)
                .cornerRadius(30)

            VStack{
                Image(systemName: places.direction2Icon)
//                    .resizable()
//                    .frame(width: 25, height: 30)
                    .scaleEffect(1.4)
                    .padding(.vertical,0.1)
                
                Text(places.direction2Name)
            }
        }
        
//        HStack{
//            VStack{
//                Image(systemName: "dada")
//                    .resizable()
//                    .frame(width: 40, height: 40)
//                Text("juanda")
//            }
//            Color
//                .black
//                .frame(width: 250 / UIScreen.main.scale, height: 10)
//                .cornerRadius(30)
//
//            VStack{
//                Image(systemName: "airplane")
//                    .resizable()
//                    .frame(width: 40, height: 40)
//                Text("bandara")
//            }
//            Color
//                .black
//                .frame(width: 250 / UIScreen.main.scale, height: 10)
//                .cornerRadius(30)
//
//            VStack{
//                Image(systemName: "airplane")
//                    .resizable()
//                    .frame(width: 40, height: 40)
//                Text("bandara")
//            }
//        }
        
        
    }
}

struct MapController_Previews: PreviewProvider {
    static var previews: some View {
        DirectionController(places: Place.example1())
    }
        
}
