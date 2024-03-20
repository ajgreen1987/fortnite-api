//
//  BaseClient.swift
//  Sweaty Llama
//
//  Created by AJ Green on 10/19/23.
//

import Foundation


// Base class for shared API client functionality
class BaseClient {
    
    // Default properties
    var defaultLang: String
    var ignoreWarnings: Bool
    var credentials: String
    
    // Initializer
    init(credentials: String, config: [String: Any]? = nil) throws {
        guard !credentials.isEmpty else {
            throw NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey: "Invalid Credentials Supplied."])
        }
        
        self.defaultLang = config?["defaultLanguage"] as? String ?? "en"
        self.ignoreWarnings = config?["ignoreWarnings"] as? Bool ?? false
        self.credentials = credentials
        
        guard supportsLanguage(self.defaultLang) else {
            throw NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey: "Supplied default language \(self.defaultLang) is not supported"])
        }
    }
    
    // Method to send an API request
    func request(uri: String, options: [String: Any]? = ["method": "GET"]) async throws -> Any {
        // If in test mode, return the URI (assuming a testMode flag is set elsewhere)
        if let testMode = ProcessInfo.processInfo.environment["testMode"], testMode.lowercased() == "true" {
            return uri
        }
        
        // Create the URL and request objects
        guard let url = URL(string: uri) else { throw NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey: "Invalid URL"]) }
        var request = URLRequest(url: url)
        request.httpMethod = options?["method"] as? String ?? "GET"
        request.addValue(self.credentials, forHTTPHeaderField: "Authorization")
        
        // Send the request and parse the response
        let (data, response) = try await URLSession.shared.data(for: request)
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey: "Invalid response"])
        }
        
        let json = try JSONSerialization.jsonObject(with: data, options: [])
        return json
    }
    
    // Method to print a deprecation warning
    func deprecationWarning(oldMethod: String, newMethod: String) {
        guard !self.ignoreWarnings else { return }
        print("WARNING: \(oldMethod) has been deprecated - please use \(newMethod)")
    }
}

