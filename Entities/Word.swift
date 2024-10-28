//
//  Word.swift
//  Bitirme
//
//  Created by Serkan Yılmaz on 22.10.2024.
//

class Word : Decodable{
    let wordId: String
    var TurkishForm: String
    var EnglishForm: String
    
    init(wordId: String,turkishForm: String, englishForm: String) {
        self.wordId = wordId
        self.TurkishForm = turkishForm
        self.EnglishForm = englishForm
    }
}
