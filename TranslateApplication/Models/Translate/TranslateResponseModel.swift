//
//  TranslateResponseModel.swift
//  TranslateApplication
//
//  Created by 이준혁 on 2023/01/23.
//

import Foundation

struct TranslateResponseModel: Decodable {
    private let message: Message
    
    // message.result.translatedText -> translatedText
    var translatedText: String { message.result.translatedText }
    
    struct Message: Decodable {
        let result: Result
    }
    
    struct Result: Decodable {
        let translatedText: String
    }
}
