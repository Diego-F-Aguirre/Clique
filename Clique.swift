//
//  Clique.swift
//  Clique
//
//  Created by Diego Aguirre on 3/10/16.
//  Copyright © 2016 Diego Aguirre. All rights reserved.
//

import Foundation

//struct Clique: Equatable, FireBaseType {
//    
//    let kClique = "clique"
//    let kMessage = "message"
//    
//    let users: [User] = []
//    let cliqueName: String
//    let identifier: String?
//    var endpoint: String
//    
//    
//    var jsonValue: [String : AnyObject] {
//        return [kClique: cliqueName, kMessage: messages]
//    }
//    
//    init(clique: Clique, messages: [Message]) {
//        self.username = username
//        self.receiver = receiver
//        self.text = text
//    }
//    
//    init?(json: [String : AnyObject], identifier: String) {
//        guard let username = json[kUsername] as? String,
//            let receiver = json[kReceiver] as? String,
//            let text = json[kText] as? String else { return nil }
//        
//        self.username = username
//        self.receiver = receiver
//        self.text = text
//        self.identifier = identifier
//    }
//    
//    
//    
//    
//    
//    
//    
//}
//
//func ==(lhs:Clique, rhs: Clique) -> Bool {
//    
//    return (lhs.clique == rhs.clique) && (lhs.messages == rhs.messages)
//    
//}