//
//  Word.swift
//  Bitirme
//
//  Created by Serkan Yılmaz on 22.10.2024.
//

class WordQuiz: Quiz{
    var word: Word
    var letters: [Character]
    
    init(word: Word) {
        self.word = word
        self.letters = Array(word.EnglishForm)
    }
}
