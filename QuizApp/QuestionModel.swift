//
//  QuestionModel.swift
//  QuizApp
//
//  Created by Stina Thun on 2026-03-29.
//

import Foundation

struct Question: Identifiable {
    let id = UUID()
    let questionText: String
    let options: [String]
    let correctIndex: Int
    
    var correctAnswer: String {
        options[correctIndex]
    }
}

enum QuizPhase {
    case start
    case quiz
    case result
}

extension Question {
    static var allQuestions: [Question] = [
        // Frågeexempel
        Question(
            questionText: "Hvad heter solen?",
            options: ["Merkur", "Venus", "Jorden", "Solen"],
            correctIndex: 3),
        
        ]
}
