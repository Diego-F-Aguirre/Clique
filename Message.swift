//
//  Message.swift
//  Clique
//
//  Created by Diego Aguirre on 3/6/16.
//  Copyright © 2016 Diego Aguirre. All rights reserved.
//

import Foundation

struct Message: Equatable, FireBaseType {
    let kSender = "sender"
    let kReceiver = "receiver"
    let kText = "text"
    
    let sender: String
    let receiver: String
    let text: String
    var identifier: String?
    var endpoint: String {
        return "messages"
    }
    
    var jsonValue: [String: AnyObject] {
        return [kSender: sender, kReceiver: receiver, kText: text]
    }
    
    init(sender: String, receiver: String, text: String) {
        self.sender = sender
        self.receiver = receiver
        self.text = text
    }
    
    init?(json: [String : AnyObject], identifier: String) {
        guard let sender = json[kSender] as? String,
            let receiver = json[kReceiver] as? String,
            let text = json[kText] as? String else { return nil }
        
        self.sender = sender
        self.receiver = receiver
        self.text = text
        self.identifier = identifier
    }
}

func ==(lhs:Message, rhs: Message) -> Bool {
    
    return (lhs.text == rhs.text) && (lhs.sender == rhs.sender)
    
}