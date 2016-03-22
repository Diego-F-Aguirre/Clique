//
//  Conversation.swift
//  Clique
//
//  Created by Diego Aguirre on 3/10/16.
//  Copyright © 2016 Diego Aguirre. All rights reserved.
//

import Foundation

struct Conversation: Equatable, FireBaseType {
    let kCliques = "cliques"
    let kMessages = "messages"
    
    let messagesId: [String]
    let cliquesId: [String]
    let identifier: String?
    var endpoint: String {
        return "conversation"
    }
    
    
    var jsonValue: [String : AnyObject] {
        return [kCliques: cliquesId.map({$0}), kMessages: messagesId.map({$0})]
    }
    
    init(cliques: [String], messages: [String]) {
        self.cliquesId = cliques
        self.messagesId = messages
    }
    
    init?(json: [String : AnyObject], identifier: String) {
        guard let clique = json[kCliques] as? [String],
            let messages = json[kMessages] as? [String] else { return nil }
        
        
        self.cliquesId = clique
        self.messagesId = messages
        self.identifier = identifier
        
    }
    
}

func ==(lhs:Conversation, rhs: Conversation) -> Bool {
    
    return (lhs.cliquesId == rhs.cliquesId) && (lhs.messagesId == rhs.messagesId)
    
}