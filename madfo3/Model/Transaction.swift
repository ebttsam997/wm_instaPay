//
//  Transaction.swift
//  madfo3
//
//  Created by Anfal Alatawi on 02/11/1439 AH.
//  Copyright © 1439 Ebtsam alkhuzai. All rights reserved.
//

import Foundation

class Transaction {
    var sender : User
    var receiver : User
    var amount : Double
    var message : String?
    var dateTime: String?
    
    //transaction with mesage
    init (sender : User, receiver : User, amount : Double) {
        self.sender = sender
        self.receiver = receiver
        self.amount = amount
        dateTime = getCurrentDateTime() //there is some error here.
    }
    
    //transaction without message
    init (sender : User, receiver : User, amount : Double, message : String) {
        self.sender = sender
        self.receiver = receiver
        self.amount = amount
        self.message = message
        dateTime = getCurrentDateTime()
        
    }
    
    //Processing From Sender
    //func
    
    //Processing From Reciver
    //func
    
    //Generating time in format December 23, 2017at 12:27:57 PM
    func getCurrentDateTime() -> String
    {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .medium
        let str = formatter.string(from: Date())
        return str
    }
}
