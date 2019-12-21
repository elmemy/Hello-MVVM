//
//  RegisterViewModel.swift
//  MVVM Model
//
//  Created by ahmed elmemy on 12/20/19.
//  Copyright © 2019 ElMeMy. All rights reserved.
//

import Foundation

class RegisterViewModel
{
    //Set Variable
    var firstName :String!
    var lastName :String!
    var password :String!
    var email : String!
    
    init(firstName:String,lastName:String,password:String,email:String) {
        self.firstName = firstName
        self.lastName = lastName
        self.password = password
        self.email = email
    }
    
    
    func save() {
        let user = User(vm: self)
    }
}
