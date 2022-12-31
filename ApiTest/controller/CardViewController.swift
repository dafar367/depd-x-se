//
//  CardViewController.swift
//  ApiTest
//
//  Created by atallah dafa on 27/12/22.
//

//VStack{
//        AsyncImage(url: URL(string: place.image)) { place in
//            place
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .overlay(alignment: .bottom)
//                {
//                    Text(place.name)
//                        .font(.headline)
//                        .foregroundColor(.white)
//                        .shadow(color: .black, radius: 3, x: 0, y: 0)
//                        .frame(maxWidth: 140)
//                        .padding()
//                }
//        } placeholder: {
//            Image(systemName: "photo")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 40, height: 40, alignment: .center)
//                .foregroundColor(.white.opacity(0.7))
//                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                .overlay(alignment: .bottom) {
//                    Text(place.name)
//                        .font(.headline)
//                        .foregroundColor(.white)
//                        .shadow(color: .black, radius: 3, x: 0, y: 0)
//                        .frame(maxWidth: 136)
//                        .padding()
//                }
//        }
//}
//.frame(width: 180, height: 230, alignment: .top)
//.background(LinearGradient(gradient: Gradient(colors: [Color(.black).opacity(0.5), Color(.gray)]), startPoint: .top, endPoint: .bottom))
//.clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
//.shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 10)

import SwiftUI

struct CardViewController: View {
//    @State var places:[place]=[]
    
    let places:Place

    var body: some View {
        VStack{
            AsyncImage(url: URL(string: places.image)){
                phase in if let image = phase.image{
                    image.resizable()
                        .aspectRatio(contentMode: .fill)
                        .overlay(alignment: .bottom)
                        {
                            Text(places.name)
                                .font(.headline)
                                .foregroundColor(.white)
                                .shadow(color: .black, radius: 3, x: 0, y: 0)
                                .frame(maxWidth: 140)
                                .padding()
                        }
                }
            }
        }
        .frame(width: 200, height: 240, alignment: .top)
        .background(LinearGradient(gradient: Gradient(colors: [Color(.black).opacity(0.5), Color(.gray)]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 10)
        
        
    }

}

struct CardViewController_Previews: PreviewProvider {
    static var previews: some View {
        CardViewController(places: Place.example1())
    }
}
