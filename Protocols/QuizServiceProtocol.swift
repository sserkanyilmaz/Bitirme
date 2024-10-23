//
//  Quiz.swift
//  Bitirme
//
//  Created by Serkan Yılmaz on 22.10.2024.
//

protocol QuizServiceProtocol {
    func startQuiz(for quiz: Quiz) -> Void
    func checkAnswer(for quiz: Quiz, answer: String) -> Bool
}
