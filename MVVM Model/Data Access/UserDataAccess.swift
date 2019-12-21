//
//  UserDataAccess.swift
//  MVVM Model
//
//  Created by ahmed elmemy on 12/20/19.
//  Copyright © 2019 ElMeMy. All rights reserved.
//

import Foundation

class DataAccess {
    
    func getAllUsers() -> [User] {
        
        var users = [User]()
        users.append(User(firstName: "Mohammad", lastName: "Azam", email: "azamsharp@gmail.com", password: "888182181818128"))
        users.append(User(firstName: "John", lastName: "Doe", email: "johndoe@gmail.com", password: "1212012102210120"))
        users.append(User(firstName: "Mary", lastName: "Kate", email: "marykate@gmail.com", password: "9129121212012-21"))
        users.append(User(firstName: "Alex", lastName: "Lowe", email: "alexlowe@gmail.com", password: "120120120121200120"))

        return users
        
    }
    
}
