//
//  StringExtension.swift
//  Bitirme
//
//  Created by Serkan Yılmaz on 30.10.2024.
//

extension String {
    
    /// Cleaning text punctuation marks
    func cleanText() -> String {
        var output = [String]()
        self.enumerateSubstrings(
            in: self.startIndex ..< self.endIndex,
            options: .byWords
        ) { substring, _, _, _ in
            if let substring = substring {
                return output.append(substring)
            }
        }
        return output.joined(separator: " ")
    }
}
