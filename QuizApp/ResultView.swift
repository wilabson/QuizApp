//
//  ResultView.swift
//  QuizApp
//
//  Created by Stina Thun on 2026-03-29.
//

import SwiftUI

struct ResultView: View {
    let score: Int
    let total: Int
    @Binding var phase: QuizPhase

    var body: some View {
        Text("You scored \(score) out of \(total)")
    }
}

#Preview {
    ResultView(score: 0, total: 1, phase: .constant(.result))
}
