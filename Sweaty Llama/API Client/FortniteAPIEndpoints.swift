//
//  FortniteAPIEndpoints.swift
//  Sweaty Llama
//
//  Created by AJ Green on 10/19/23.
//

import Foundation

let endpoint = "https://fortniteapi.io/v2"

enum FortniteAPIEndpoints {
    static func listChallenges(season: String, lang: String) -> String {
        "\(endpoint)/challenges?season=\(season)&lang=\(lang)"
    }
    
    static func listItems(lang: String) -> String {
        "\(endpoint)/items/list?lang=\(lang)"
    }
    
    static func listUpcomingItems(lang: String) -> String {
        "\(endpoint)/items/upcoming?lang=\(lang)"
    }
    
    static func getItemDetails(id: String, lang: String) -> String {
        "\(endpoint)/items/get?id=\(id)&lang=\(lang)"
    }
    
    static func getDailyShop(lang: String) -> String {
        "\(endpoint)/shop?lang=\(lang)"
    }
    
    static func getShopVotingOptions() -> String {
        "\(endpoint)/shop/voting"
    }
    
    static func searchAccountId(username: String, platform: String?, strict: Bool = true) -> String {
        var uri = "\(endpoint)/lookup?username=\(username)"
        if let platform = platform {
            uri += "&platform=\(platform)"
        }
        if !strict {
            uri += "&strict=false"
        }
        return uri
    }
    
    static func getGlobalPlayerStats(account: String) -> String {
        "\(endpoint)/stats?account=\(account)"
    }
    
    static func getPlayerRecentMatches(account: String) -> String {
        "\(endpoint)/matches?account=\(account)"
    }
    
    static func getNews(mode: String, lang: String) -> String {
        "\(endpoint)/news?lang=\(lang)&type=\(mode)"
    }
    
    static func getBattlePassRewards(season: String, lang: String) -> String {
        "\(endpoint)/battlepass?lang=\(lang)&season=\(season)"
    }
    
    static func getAchievements(lang: String) -> String {
        "\(endpoint)/achievements?lang=\(lang)"
    }
    
    static func getTournaments(lang: String) -> String {
        "\(endpoint)/events/list?lang=\(lang)"
    }
    
    static func getTournamentSessionDetails(windowId: String, page: String) -> String {
        "\(endpoint)/events/window?windowId=\(windowId)&page=\(page)"
    }
    
    static func getTournamentScores(eventId: String) -> String {
        "\(endpoint)/events/cumulative?eventId=\(eventId)"
    }
    
    static func listWeapons() -> String {
        "\(endpoint)/weapons/list"
    }
    
    static func listPreviousMaps() -> String {
        "\(endpoint)/maps/list"
    }
    
    static func listPreviousSeasons() -> String {
        "\(endpoint)/seasons/list"
    }
    
    static func listCurrentPOI(lang: String) -> String {
        "\(endpoint)/game/poi?lang=\(lang)"
    }
    
    static func getStatus() -> String {
        "\(endpoint)/status"
    }
    
    static func listCurrentGameModes(lang: String) -> String {
        "\(endpoint)/game/modes?lang=\(lang)"
    }
    
    static func listUsersById(ids: [String] = []) -> String {
        "\(endpoint)/lookupUsername?id=\(ids.joined(separator: ","))"
    }
    
    static func getBundles(lang: String) -> String {
        "\(endpoint)/bundles?lang=\(lang)"
    }
    
    static func listLoot(lang: String) -> String {
        "\(endpoint)/loot/list?lang=\(lang)"
    }
    
    static func getLootDetails(id: String, lang: String) -> String {
        "\(endpoint)/loot/get?id=\(id)&lang=\(lang)"
    }
    
    static func listSets(lang: String) -> String {
        "\(endpoint)/items/sets?lang=\(lang)"
    }
    
    static func getReplayDownloadLink(id: String) -> String {
        "\(endpoint)/events/replay?session=\(id)"
    }
    
    static func getWeaponDetails(id: String, lang: String) -> String {
        "\(endpoint)/loot/get?id=\(id)&lang=\(lang)"
    }
    
    static func listWeaponSpawnChances(mode: String) -> String {
        "\(endpoint)/loot/chances?mode=\(mode)"
    }
    
    static func getGameModeExtendedData(mode: String) -> String {
        "\(endpoint)/game/modes/data?playlist=\(mode)"
    }
    
    static func listFeaturedCreativeIslands() -> String {
        "\(endpoint)/creative/featured"
    }
    
    static func searchIsland(code: String) -> String {
        "\(endpoint)/creative/island?code=\(code)"
    }
    
    static func listFish(lang: String) -> String {
        "\(endpoint)/loot/fish?lang=\(lang)"
    }
    
    static func getPlayerFishStats(id: String) -> String {
        "\(endpoint)/stats/fish?accountId=\(id)"
    }
    
    static func getMapsItems() -> String {
        "\(endpoint)/maps/items/list"
    }
    
    static func getGameRadios(lang: String) -> String {
        "\(endpoint)/game/radios?lang=\(lang)"
    }
    
    static func getRarities() -> String {
        "\(endpoint)/rarities"
    }
}

let endpointV2 = "https://fortniteapi.io/v2"

enum FortniteAPIV2Endpoints {
    static func listChallenges(season: String, lang: String) -> String {
        "\(endpointV2)/challenges?season=\(season)&lang=\(lang)"
    }
    
    static func listItems(lang: String) -> String {
        "\(endpointV2)/items/list?lang=\(lang)"
    }
    
    static func listUpcomingItems(lang: String) -> String {
        "\(endpointV2)/items/upcoming?lang=\(lang)"
    }
    
    static func getItemDetails(id: String, lang: String) -> String {
        "\(endpointV2)/items/get?id=\(id)&lang=\(lang)"
    }
    
    static func getDailyShop(lang: String) -> String {
        "\(endpointV2)/shop?lang=\(lang)"
    }
    
    static func getBattlePassRewards(season: String, lang: String) -> String {
        "\(endpointV2)/battlepass?lang=\(lang)&season=\(season)"
    }
    
    static func listItemLocations() -> String {
        "\(endpointV2)/maps/items/list"
    }
    
    static func listCurrentPOI(lang: String) -> String {
        "\(endpointV2)/game/poi?lang=\(lang)"
    }
}

