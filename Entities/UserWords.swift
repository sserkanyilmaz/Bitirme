//
//  UserWords.swift
//  Bitirme
//
//  Created by Serkan Yılmaz on 30.10.2024.
//

import FirebaseFirestore

class UserWord: Codable {
    var wordRef: DocumentReference
    var learnedAt: Timestamp
    var isCorrect: Bool
    
    init(wordRef: DocumentReference, learnedAt: Timestamp, isCorrect: Bool) {
        self.wordRef = wordRef
        self.learnedAt = learnedAt
        self.isCorrect = isCorrect
    }
}
