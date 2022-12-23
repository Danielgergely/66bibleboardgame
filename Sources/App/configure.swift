import Fluent
import FluentMongoDriver
import Vapor

// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    try app.databases.use(.mongo(
        connectionString: Environment.get("DATABASE_URL") ?? "mongodb+srv://readWrite:readWrite@66bibleboardgame.uphnr7x.mongodb.net/test"
    ), as: .mongo)
    
    app.migrations.add(CreateUsers())
    try app.autoMigrate().wait()

    // register routes
    try routes(app)
}
