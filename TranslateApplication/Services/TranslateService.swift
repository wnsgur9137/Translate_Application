//
//  TranslateService.swift
//  TranslateApplication
//
//  Created by 이준혁 on 2023/01/23.
//

import Foundation
import Alamofire

struct TranslateService {
    var sourceLanguage: Language = .ko
    var targetLanguage: Language = .en
    
    func translate(
        from text: String,
        completionHandler: @escaping (String) -> Void
    ) {
        guard let url = URL(string: "https://openapi.naver.com/v1/papago/n2mt") else {
            return
        }
        
        let requestModel = TranslateRequestModel(
            source: sourceLanguage.languageCode,
            target: targetLanguage.languageCode,
            text: text
        )
        
        let headers: HTTPHeaders = [
            "X-Naver-Client-Id": APIKeys.NaverClientId,
            "X-Naver-Client-Secret": APIKeys.NaverClientSecret
        ]
        
        AF
            .request(url, method: .post, parameters: requestModel, headers: headers)
            .responseDecodable(of: TranslateResponseModel.self) { response in
                switch response.result {
                case .success(let result):
                    completionHandler(result.translatedText)
                case .failure(let error):
                    print("ERROR-TranslateService: \(error.localizedDescription)")
                    return
                }
            }
    }
}
