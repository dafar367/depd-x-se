//
//  ApiCall.swift
//  ApiTest
//
//  Created by atallah dafa on 29/12/22.
//

import Foundation

class apiCall {
    func getPlace(completion:@escaping ([Place]) -> ()) {
        guard let url = URL(string: "http://localhost:9090/mahasiswa") else { return }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let places = try! JSONDecoder().decode([Place].self, from: data!)
            //print(users)
             
            DispatchQueue.main.async {
                completion(places)
            }
        }
        .resume()
    }
}


