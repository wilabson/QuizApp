//
//  ColorGradients.swift
//  QuizApp
//
//  Created by William Albinsson on 2026-04-05.
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

struct ButtonGradient {
    static let logoGradient = LinearGradient(
        colors: [
            Color(red: 1.0, green: 0.7, blue: 0.2),
            Color(red: 0.95, green: 0.1, blue: 0.35)
        ], startPoint: .top, endPoint: .bottom)
}
