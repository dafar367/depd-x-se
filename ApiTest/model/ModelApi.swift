//
//  ModelApi.swift
//  ApiTest
//
//  Created by atallah dafa on 27/12/22.
//

import Foundation

import CoreLocation

enum Category: String, CaseIterable, Identifiable{
    var id: String{ self.rawValue }

    case restaurant = "Restaurant"
    case museum = "Museum"
    case shopping = "Shopping"
    case monument = "Monument"
}

struct Place:Identifiable,Codable{
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
    
    static func example1() -> Place{
        return Place(name: "dafa",
                     image: "https://cdn-asset.jawapos.com/wp-content/uploads/2020/10/iwak-p-560x374.jpg",
                     description: "ini tes",
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

//struct place:Hashable,Codable{
//    let name: String
//    let image: String
//    let description:String
//    let star:String
//    let jam:String
//    let telp:String
//    let category: Category.RawValue
//}

//@MainActor class ViewModel: ObservableObject{
//    @Published var places = [place]()
////    @State private var places = [place]()
//
//    //panggil url
//    func fetch() async{
//        guard let url = URL(string: "http://localhost:9090/mahasiswa") else{
//            print("error")
//            return
//        }
//        
//        do{
//            let(data, _)=try await URLSession.shared.data(from: url)
//            
//            if let decodedResponse = try? JSONDecoder().decode([place].self, from: data){
//                places = decodedResponse
//            }
//                
//        
//        }catch{
//            print("bad news")
//        }
//
//    }
//}
