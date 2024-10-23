//
//  PhotoQuizService.swift
//  Bitirme
//
//  Created by Serkan Yılmaz on 22.10.2024.
//

class PhotoQuizService: QuizServiceProtocol {
    func startQuiz(for quiz: Quiz) {
        guard let photoQuiz = quiz as? PhotoQuiz else { return }
        print("What word matches the photo at \(photoQuiz.photo.url)?")
    }
    
    func checkAnswer(for quiz: Quiz, answer: String) -> Bool {
        guard let photoQuiz = quiz as? PhotoQuiz else { return false }
        return answer == photoQuiz.photo.word.EnglishForm
    }
}
