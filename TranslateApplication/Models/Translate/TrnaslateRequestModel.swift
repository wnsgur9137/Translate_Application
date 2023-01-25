//
//  TrnaslateRequestModel.swift
//  TranslateApplication
//
//  Created by 이준혁 on 2023/01/23.
//

import Foundation

struct TranslateRequestModel: Codable {
    let source: String
    let target: String
    let text: String
}
