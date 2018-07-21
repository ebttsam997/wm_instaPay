//
//  User.swift
//  madfo3
//
//  Created by Anfal Alatawi on 02/11/1439 AH.
//  Copyright © 1439 Ebtsam alkhuzai. All rights reserved.
//

import Foundation

class User : Equatable {
    //properties:

    var userName : String = ""
    var firstName : String = ""
    var lastName : String = ""
    var email : String = ""
    var displayName : String = ""
    var balance : Double = 0.0
    var friends : [User] = []
    var favFriends : [User] = []
    var transactionHistory : [Transaction] = []
    //var QRCode : something ... idk to make this a string orrr ?
    //var cards : [something] ... and add supporting methods
    
    //empty init:
    init(){}
    
    //full init:
    init(userName : String, firstName : String, lastName : String, email : String){
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.userName = userName
        
        balance = 0
        friends = []
        transactionHistory = []
        
        //default display name, unless changed
        displayName = firstName + " " + lastName
    }
    
    //SET display name
    func setDisplayName(newDisplayName : String)
    {
        displayName = newDisplayName
    }

    //Add friend
    func addFriend(user: User)
    {
        friends.append(user)
    }
    
    //friends' number
    func getFriendsCount() -> Int {
        return friends.count
    }
    
    //Add a transaction
    func addTransaction(transaction : Transaction)
    {
        transactionHistory.append(transaction)
    }

    //check if incoming user is a favorite friend of this user
    //    func isFavoriteFriend(user : User) -> Bool {
    //        //return friends.exis
    //    }
    
    
    
}
func == (lhs: User, rhs: User) -> Bool {
    return lhs.userName == rhs.userName
}
