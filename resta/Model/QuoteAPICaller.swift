//
//  QuoteAPICaller.swift
//  resta
//
//  Created by amenm on 12/1/22.
//

import Foundation
// url to be used : https://type.fit/api/quotes

//YNUsNEOTjo5Q4DpcqKY+dw==4AwQNhuOhsJPD04S
//"https://type.fit/api/quotes"

final class APICaller {

    
    static let shared = APICaller()
    
   
    struct Constants {
        static let category = "happiness".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        static let motivationalQuotesURL = URL(string: "https://api.api-ninjas.com/v1/quotes?category="+category!)
    }
    
    private init() {}
   
    public func getMotivationalQuotes(completion: @escaping (Result<[String], Error>) -> Void) {
        guard let url = Constants.motivationalQuotesURL else { return }
        var request = URLRequest(url: url)
        request.setValue("YNUsNEOTjo5Q4DpcqKY+dw==4AwQNhuOhsJPD04S", forHTTPHeaderField: "X-Api-Key")
      
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            if let error = error {
                completion(.failure(error))
            } else if let data = data {
                do {
                   
                  
                    let result = try JSONDecoder().decode(APIResponse.self, from: data)
                    //print("adsf")
                   //print("quotes \(result.quotes)")
                    //let result = String(data: data, encoding: .utf8)!
                   // print(result.count)
                    //print(String(data: data, encoding: .utf8)!)
                    //let results: [Quote] = try! JSONDecoder().decode([Quote].self, from: data)
                   // print("quotes \(results.count)")
                } catch {
                    completion(.failure(error))
                }
            }
        }
        task.resume()
    }
}



