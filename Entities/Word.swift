//
//  Word.swift
//  Bitirme
//
//  Created by Serkan Yılmaz on 22.10.2024.
//

class Word : Decodable{
    let TurkishForm: String
    let EnglishForm: String
    
    init(turkishForm: String, englishForm: String) {
        self.TurkishForm = turkishForm
        self.EnglishForm = englishForm
    }
}
