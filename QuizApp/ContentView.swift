//
//  ContentView.swift
//  QuizApp
//
//  Created by William Albinsson on 2026-03-27.
//

import SwiftUI

struct ContentView: View {
    @State private var phase: QuizPhase = .start
    @State private var finalScore: Int = 0

    var body: some View {
        Group {
            switch phase {
            case .start:
                QuizStartView(phase: $phase)
            case .quiz:
                QuizView(phase: $phase, finalScore: $finalScore)
            case .result:
                ResultView(score: finalScore, total: Question.allQuestions.count, phase: $phase)
            }
        }
    }
}


#Preview {
    ContentView()
}
