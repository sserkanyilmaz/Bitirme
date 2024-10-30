//
//  UserPhotos.swift
//  Bitirme
//
//  Created by Serkan Yılmaz on 30.10.2024.
//

import FirebaseFirestore
class UserPhotoQuiz: Codable {
    
    var photoRef: DocumentReference
    var completedAt: Timestamp
    var isCorrect: Bool
    
    
    init(photoRef: DocumentReference, completedAt: Timestamp, isCorrect: Bool) {
        self.photoRef = photoRef
        self.completedAt = completedAt
        self.isCorrect = isCorrect
    }
}
