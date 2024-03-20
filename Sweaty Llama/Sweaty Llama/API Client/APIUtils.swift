//
//  APIUtils.swift
//  Sweaty Llama
//
//  Created by AJ Green on 10/19/23.
//

import Foundation

// util.swift
// General utility functions

/// supportsLanguage()
/// Checks if supplied language is supported by the API
///
/// - Parameters:
///   - lang: The language code as a string.
/// - Returns: A boolean indicating whether the language is supported.
func supportsLanguage(_ lang: String) -> Bool {
    let supportedLanguages = [
        "en",
        "ar",
        "de",
        "es",
        "es-419",
        "fr",
        "it",
        "ja",
        "ko",
        "pl",
        "pt-BR",
        "ru",
        "tr",
        "zh-CN",
        "zh-Hant"
    ]
    return supportedLanguages.contains(lang)
}

