//
//  User.swift
//  
//
//  Created by Daniel Gergely on 12/22/22.
//

import Fluent
import Vapor

final class User: Model, Content {
    static let schema = "users"
    
    @ID(key: .id)
    var id: UUID?
    
    @Field(key: "email")
    var email: String
    
    @Field(key: "firstName")
    var firstName: String
    
    @Field(key: "lastName")
    var lastName: String
    
    @Field(key: "username")
    var username: String
    
    @Field(key: "password")
    var password: String
    
    @Field(key: "preferredLanguage")
    var preferredLanguage: String
    
    @Field(key: "level")
    var level: Int8
    
    init(){}
    
    init(id: UUID? = nil, email: String, firstName: String, lastName: String, username: String, password: String, preferredLanguage: String, level: Int8) {
        self.id = id
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.username = username
        self.password = password
        self.preferredLanguage = preferredLanguage
        self.level = level
    }
}
