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
    @State private var maxQuestions = 8

    var body: some View {
        Group {
            switch phase {
            case .start:
                QuizStartView(phase: $phase, maxQuestions: $maxQuestions)
                    .transition(.scale)
            case .quiz:
                QuizView(phase: $phase, finalScore: $finalScore, maxQuestions: maxQuestions)
            case .result:
                ResultView(score: finalScore, total: maxQuestions, phase: $phase)
            }
        }
        .background(
            LinearGradient(
                colors: [
                    Color(red: 1.0, green: 0.75, blue: 0.40),
                    Color(red: 0.95, green: 0.20, blue: 0.45)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing))
    }
}


#Preview {
    ContentView()
}
