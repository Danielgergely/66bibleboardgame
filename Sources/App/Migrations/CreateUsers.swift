//
//  CreateUsers.swift
//  
//
//  Created by Daniel Gergely on 12/22/22.
//

import Fluent

struct CreateUsers: Migration {
    func prepare(on database: FluentKit.Database) -> NIOCore.EventLoopFuture<Void> {
        return database.schema("users")
            .id()
            .field("email", .string, .required)
            .field("firstName", .string, .required)
            .field("lastName", .string, .required)
            .field("username", .string, .required)
            .field("password", .string, .required)
            .field("preferredLanguage", .string)
            .field("level", .int8, .required)
            .create()
    }
    
    func revert(on database: FluentKit.Database) -> NIOCore.EventLoopFuture<Void> {
        return database.schema("users").delete()
    }
    
    
}
