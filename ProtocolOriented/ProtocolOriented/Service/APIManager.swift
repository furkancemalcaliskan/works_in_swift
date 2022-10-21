//
//  APIManager.swift
//  ProtocolOriented
//
//  Created by Furkan Cemal Çalışkan on 21.10.2022.
//

import Foundation

class APIManager {
    
    static let shared = APIManager()
    private init() {}
    
    
    func fetchUser(completion: @escaping(Result<UserModel,Error>) -> Void) {
        
        let url = URL(string: "https://jsonplaceholder.typicode.com/users")!
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {return}
            DispatchQueue.main.async {
                if let user = try? JSONDecoder().decode([UserModel].self, from: data).first {
                    completion(.success(user))
                    
                } else {
                    
                    completion(.failure(NSError()))
                    
                }
            }
        }.resume()
        
    }
    
}
