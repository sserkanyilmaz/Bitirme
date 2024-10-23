//
//  SentenceQuizService.swift
//  Bitirme
//
//  Created by Serkan Yılmaz on 22.10.2024.
//

class SentenceQuizService: QuizServiceProtocol {
    func startQuiz(for quiz: Quiz) {
        guard let sentenceQuiz = quiz as? SentenceQuiz else { return }
        print("Translate the following sentence: \(sentenceQuiz.sentence.fullSentence.count)")
    }
    
    func checkAnswer(for quiz: Quiz, answer: String) -> Bool {
        guard let sentenceQuiz = quiz as? SentenceQuiz else { return false }

        return answer == sentenceQuiz.sentence.fullSentence
    }
}
