//
//  FortniteAPI.swift
//  Sweaty Llama
//
//  Created by AJ Green on 10/19/23.
//

import Foundation

class FortniteAPI: BaseClient {
    var v2: FortniteAPIv2
    
    init(credentials: String, config: [String: Any] = [:]) throws {
        self.v2 = try FortniteAPIv2(credentials: credentials, config: config)
        try super.init(credentials: credentials)
    }
    
    func listItems(_ options: [String: Any] = [:]) async throws -> [String: Any]? {
        self.deprecationWarning(oldMethod: "listItems", newMethod: "FortniteAPI.v2.listItems")
        let lang = options["lang"] as? String ?? "en"
        let uri = FortniteAPIEndpoints.listItems(lang: lang)
        return try await self.request(uri: uri) as? [String : Any]
    }
    
    func getRarities() async throws -> [String: Any]? {
        let uri = FortniteAPIEndpoints.getRarities()
        return try await self.request(uri: uri) as? [String : Any]
    }
}

