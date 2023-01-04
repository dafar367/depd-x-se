//
//  ModelApi.swift
//  ApiTest
//
//  Created by atallah dafa on 27/12/22.
//

import Foundation

import CoreLocation
import SwiftUI




struct Place:Hashable,Identifiable,Codable{
    let id:String = UUID().uuidString
    let name: String
    let image: String
    let description:String
    let star:String
    let jam:String
    let telp:String
    let alamat:String
    let category: Category.RawValue
    var latitude: CLLocationDegrees
    var longitude: CLLocationDegrees
    let direction1Name:String
    let direction1Icon:String
    let direction2Name:String
    let direction2Icon:String
    
    enum Category: String, CaseIterable, Codable{
        case pantai = "Pantai"
        case gunung = "Gunung"
        case hutan = "Hutan"
        case museum = "Museum"
//        case tugu = "Tugu"
//        case goa = "Goa"
//        case tamana = "Taman"
    }
    static func example1() -> Place{
        return Place(name: "dafa",
                     image: "https://cdn-asset.jawapos.com/wp-content/uploads/2020/10/iwak-p-560x374.jpg",
                     description: "ini tes ini tesini tesini tesini tesini tesini tesini tesini tesini tesini tesini tesini tesini tesini tesini tesini tesini tesini tes",
                     star: "5",
                     jam: "03131231",
                     telp: "dadadadadadadadadadadadada",
                     alamat:"jalan dharmahusada indah utata ",
                     category: "restaurant",
                     latitude: -7.283210570146246,
                     longitude: 112.73519800720248,
                     direction1Name: "juanda",
                     direction1Icon: "car.fill",
                     direction2Name: "dafa",
                     direction2Icon: "mappin"
        )
    }
    
}


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

//extension Place{
//    static let all: [Place] = [
//        Place(
//            name: "dafa",
//            image: "String",
//            description: "dada",
//            star: "dada",
//            jam: "dada",
//            telp: "dada",
//            alamat: "dada",
//            category: "Pantai",
//            latitude: 301313131,
//            longitude: 313131,
//            direction1Name: "dada",
//            direction1Icon: "dada",
//            direction2Name: "dada",
//            direction2Icon: "dada"
//        ),
//        Place(
//            name: "dafa",
//            image: "String",
//            description: "dada",
//            star: "dada",
//            jam: "dada",
//            telp: "dada",
//            alamat: "dada",
//            category: "Air terjun",
//            latitude: 301313131,
//            longitude: 313131,
//            direction1Name: "dada",
//            direction1Icon: "dada",
//            direction2Name: "dada",
//            direction2Icon: "dada"
//        ),
//        Place(
//            name: "dafa",
//            image: "String",
//            description: "dada",
//            star: "dada",
//            jam: "dada",
//            telp: "dada",
//            alamat: "dada",
//            category: "Sunrise",
//            latitude: 301313131,
//            longitude: 313131,
//            direction1Name: "dada",
//            direction1Icon: "dada",
//            direction2Name: "dada",
//            direction2Icon: "dada"
//        ),
//
//    ]
//}
//
////struct place:Hashable,Codable{
////    let name: String
////    let image: String
////    let description:String
////    let star:String
////    let jam:String
////    let telp:String
////    let category: Category.RawValue
////}
//
////@MainActor class ViewModel: ObservableObject{
////    @Published var places = [place]()
//////    @State private var places = [place]()
////
////    //panggil url
////    func fetch() async{
////        guard let url = URL(string: "http://localhost:9090/mahasiswa") else{
////            print("error")
////            return
////        }
////
////        do{
////            let(data, _)=try await URLSession.shared.data(from: url)
////
////            if let decodedResponse = try? JSONDecoder().decode([place].self, from: data){
////                places = decodedResponse
////            }
////
////
////        }catch{
////            print("bad news")
////        }
////
////    }
////}
