//
//  User.swift
//  MVVM Model
//
//  Created by ahmed elmemy on 12/20/19.
//  Copyright © 2019 ElMeMy. All rights reserved.
//

import Foundation


class User {
    
    var firstName :String!
    var lastName :String!
    var email :String!
    var password :String!
    
    init(firstName :String, lastName :String, email :String, password :String) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
    }
    
    init(vm :RegisterViewModel) {
        self.firstName = vm.firstName
        self.lastName = vm.lastName
        self.email = vm.email
        self.password = vm.password
    }
}
