//
//  BackgroundGradient.swift
//  QuizApp
//
//  Created by Stina Thun on 2026-04-02.
//
import SwiftUI

struct BackgroundGradient {
    static let backgroundGradient = LinearGradient(
        colors: [
            Color(red: 1.0, green: 0.75, blue: 0.40),
            Color(red: 0.95, green: 0.20, blue: 0.45)
        ],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
}
