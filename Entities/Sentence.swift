//
//  Word.swift
//  Bitirme
//
//  Created by Serkan Yılmaz on 22.10.2024.
//

class Sentence{
    let Words: [Word]
    let fullSentence: String
    init(words: [Word]) {
        self.Words = words
        self.fullSentence = Words.map { $0.EnglishForm }.joined(separator: " ")
    }
}
