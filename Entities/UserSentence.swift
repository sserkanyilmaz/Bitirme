//
//  UserSentence.swift
//  Bitirme
//
//  Created by Serkan Yılmaz on 30.10.2024.
//

import FirebaseFirestore

class UserSentence: Codable {
    var sentenceRef: DocumentReference
    var learnedAt: Timestamp
    var isCorrect: Bool
    
    // Başlatıcı (Initializer)
    init(sentenceRef: DocumentReference, learnedAt: Timestamp, isCorrect: Bool) {
        self.sentenceRef = sentenceRef
        self.learnedAt = learnedAt
        self.isCorrect = isCorrect
    }
}
