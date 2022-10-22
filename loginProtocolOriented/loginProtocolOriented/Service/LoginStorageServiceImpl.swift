//
//  LoginStorageServiceImpl.swift
//  loginProtocolOriented
//
//  Created by Furkan Cemal Çalışkan on 22.10.2022.
//

import Foundation

class LoginStorageServiceImpl : LoginStorageService {
    
    private let storage = UserDefaults.standard
    
    var userAccessTokenKey: String {
        
        return "ACCESS_TOKEN"
        
    }
    
    func setUserAccessToken(token: String) {
        storage.set(token, forKey: userAccessTokenKey)
    }
    
    func getUserAccessToken() -> String? {
        return storage.string(forKey: userAccessTokenKey)
    }
    
}
