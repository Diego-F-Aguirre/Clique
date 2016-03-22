//
//  User.swift
//  Clique
//
//  Created by Diego Aguirre on 3/10/16.
//  Copyright © 2016 Diego Aguirre. All rights reserved.
//

import Foundation

//struct User: Equatable, FireBaseType {
//    
//    private let kCliques = "cliques"
//    private let kUsername = "username"
//    
//    let username: String
//    let identifier: String?
//    let cliques: [Clique]
//    
//    var endpoint: String {
//        return "users"
//    }
//    
//    var jsonValue: [String : AnyObject] {
//        
//        return [kUsername: username, kCliques: cliques.map({$0.identifier})]
//        
//    }
//    
//    init(username: String, cliques: [Clique] ) {
//        self.username = username
//        self.cliques = cliques
//    }
//    
//    init?(json: [String : AnyObject], identifier: String) {
//        
//        guard let username = json[kUsername] as? String else { return nil }
//        
//        self.username = username
//        self.identifier = identifier
//        self.cliques = cliques
//        
//    }
//    
//}
//
//func ==(lhs:User, rhs: User) -> Bool {
//    
//    return (lhs.username == rhs.username) && (lhs.identifier == rhs.identifier)
//    
//}