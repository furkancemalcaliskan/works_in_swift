//
//  LoginStorageService.swift
//  loginProtocolOriented
//
//  Created by Furkan Cemal Çalışkan on 22.10.2022.
//

import Foundation

protocol LoginStorageService {
    
    var userAccessTokenKey : String { get }
    func setUserAccessToken(token: String)
    func getUserAccessToken() -> String?
    
}
