//
//  QuizAppApp.swift
//  QuizApp
//
//  Created by William Albinsson on 2026-03-27.
//

import SwiftUI

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
        .background(BackgroundGradient.backgroundGradient)
    }
}

@main
struct QuizAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
#Preview {
    ContentView()
}
