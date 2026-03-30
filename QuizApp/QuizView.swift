//
//  QuizView.swift
//  QuizApp
//
//  Created by Stina Thun on 2026-03-29.
//

import SwiftUI

struct QuizView: View {
    
    @Binding var phase: QuizPhase
    @Binding var finalScore: Int

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    QuizView(phase: .constant(.quiz), finalScore: .constant(0))
}
