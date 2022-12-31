////
////  ImageControlle.swift
////  ApiTest
////
////  Created by atallah dafa on 27/12/22.
////
//
//import Foundation
//import SwiftUI
//
//
//struct urlImage: View{
////    @StateObject var viewModel = ViewModel()
//    @State var places:[place] = []
//    
//    let urlString: String
//    
//    @State var data: Data?
//    
//    var body: some View{
//        //bener
//        VStack{
//            if let data = data, let uiimage = UIImage(data: data){
//                Image(uiImage: uiimage)
//                    .resizable()
//                    .aspectRatio(contentMode: .fill)
//                    .frame(width: 180,height: 250,alignment: .top)
//                    .background(Color.gray)
//                    .cornerRadius(10)
//                    .background(LinearGradient(gradient: Gradient(colors: [Color(.black).opacity(0.5), Color(.gray)]), startPoint: .top, endPoint: .bottom))
//                    .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
//                    .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 10)
//                    
//            }else{
//                Image("")
//                    .resizable()
//                    .frame(width: 130,height: 70)
//                    .background(Color.gray)
//                    .onAppear{
//                        fetchData()
//                    }
//                
//            }
//        }  
//    }
//    private func fetchData(){
//        guard let url = URL(string: urlString) else{
//            return
//        }
//
//        let task = URLSession.shared.dataTask(with: url){
//            data,_,_ in self.data = data
//        }
//        task.resume()
//    }
//}
