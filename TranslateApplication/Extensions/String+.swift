//
//  String+.swift
//  TranslateApplication
//
//  Created by 이준혁 on 2023/01/23.
//

import Foundation

extension String {
    func localized(comment: String = "") -> String {
        return NSLocalizedString(self, comment: comment)
    }
    
    func localized(with argument: CVarArg = [], comment: String = "") -> String {
        return String(format: self.localized(comment: comment), argument)
    }
}
