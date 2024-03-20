//
//  FortniteAPIv2.swift
//  Sweaty Llama
//
//  Created by AJ Green on 10/19/23.
//

import Foundation

class FortniteAPIv2: BaseClient {
    
    func listItems(_ options: [String: Any] = [:]) async throws-> [String: Any]? {
        let lang = options["lang"] as? String ?? self.defaultLang
        let uri = String(format: FortniteAPIV2Endpoints.listItems(lang: lang))
        return try await self.request(uri: uri) as? [String : Any]
    }
    
    func listChallenges(season: String = "current", options: [String: Any] = [:]) async throws -> [String: Any]? {
        let lang = options["lang"] as? String ?? self.defaultLang
        let uri = String(format: FortniteAPIV2Endpoints.listChallenges(season: season, lang: lang))
        return try await self.request(uri: uri) as? [String : Any]
    }
    
    func listUpcomingItems(_ options: [String: Any] = [:]) async throws -> [String: Any]? {
        let lang = options["lang"] as? String ?? self.defaultLang
        let uri = String(format: FortniteAPIV2Endpoints.listUpcomingItems(lang: lang))
        return try await self.request(uri: uri) as? [String : Any]
    }
    
    func getItemDetails(itemId: String, options: [String: Any] = [:]) async throws -> [String: Any]? {
        let lang = options["lang"] as? String ?? self.defaultLang
        let uri = String(format: FortniteAPIV2Endpoints.getItemDetails(id: itemId, lang: lang))
        return try await self.request(uri: uri) as? [String : Any]
    }
    
    func getDailyShop(_ options: [String: Any] = [:]) async throws -> [String: Any]? {
        let lang = options["lang"] as? String ?? self.defaultLang
        let uri = String(format: FortniteAPIV2Endpoints.getDailyShop(lang: lang))
        return try await self.request(uri: uri) as? [String : Any]
    }
    
    func getBattlepassRewards(season: String = "current", options: [String: Any] = [:]) async throws -> [String: Any]? {
        let lang = options["lang"] as? String ?? self.defaultLang
        let uri = String(format: FortniteAPIV2Endpoints.getBattlePassRewards(season: season, lang: lang))
        return try await self.request(uri: uri) as? [String : Any]
    }
    
    func listCurrentPOI(_ options: [String: Any] = [:]) async throws -> [String: Any]? {
        let lang = options["lang"] as? String ?? self.defaultLang
        let uri = String(format: FortniteAPIV2Endpoints.listCurrentPOI(lang: lang))
        return try await self.request(uri: uri) as? [String : Any]
    }
}

