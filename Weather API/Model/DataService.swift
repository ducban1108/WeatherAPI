//
//  DataService.swift
//  Weather API
//
//  Created by Just Kidding on 4/18/19.
//  Copyright © 2019 Just Kidding. All rights reserved.
//

import Foundation
class DataService {
    static var shared: DataService = DataService()
    
    func getData(completedHandler: @escaping(Model) -> Void){
        guard let url = URL(string: "https://api.apixu.com/v1/current.json?key=48951f1bfc354bd083e71651191604&q=Paris") else {return}
        let urlRequest = URLRequest(url: url)
        
        let dataTask = URLSession.shared.dataTask(with: urlRequest) {(data, _, error) in
            guard error == nil else {
                print(error?.localizedDescription ?? "Response Error")
                return
            }
            guard let aData = data else {return}
            
            do {
                if let jsonResponse = try JSONSerialization.jsonObject(with: aData, options: .mutableContainers) as? JSON {
                    DispatchQueue.main.async {
                        completedHandler(Model(dictionary: jsonResponse))
                    }
                }
            } catch {
                print(error.localizedDescription)
            }
        }
        dataTask.resume()
    }
  
//    func downloadImage(from url: URL) {
//        let url = URL(string: "http://cdn.apixu.com/weather/64x64/day/116.png")
//        print("Download Started")
//        getDatasss(from: url!) { data, response, error in
//            guard let data = data, error == nil else { return }
//            print(response?.suggestedFilename ?? url!.lastPathComponent)
//            print("Download Finished")
//            DispatchQueue.main.async() {
//                self.imageView.image = UIImage(data: data)
//            }
//        }
//    }
//    func getDatasss(from url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
//        URLSession.shared.dataTask(with: url, completionHandler: completion).resume()
//    }
//    func getDataFake(completedHandler: @escaping([Model]) -> Void) {
//        completedHandler([
//            Model(name: "Paris", country: "French"),
//            Model(name: "Paris", country: "French"),
//            Model(name: "Paris", country: "French")])
//    }
}
