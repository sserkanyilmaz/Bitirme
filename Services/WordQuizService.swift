//
//  WordQuizService.swift
//  Bitirme
//
//  Created by Serkan Yılmaz on 22.10.2024.
//

class WordQuizService: QuizServiceProtocol {
    func startQuiz(for quiz: Quiz) {
        guard let wordQuiz = quiz as? WordQuiz else { return }
        print("Guess the word: \(String(repeating: "_", count: wordQuiz.letters.count))")
    }
    
    func checkAnswer(for quiz: Quiz, answer: String) -> Bool {
        guard let wordQuiz = quiz as? WordQuiz else { return false }
        return answer == wordQuiz.word.EnglishForm
    }
}
