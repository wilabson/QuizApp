//
//  StartView.swift
//  QuizApp
//
//  Created by Stina Thun on 2026-03-29.
//

import SwiftUI

struct QuizStartView: View {
    @Binding var phase: QuizPhase
    
    var body: some View {
        VStack {
                Image("AppLogo")
                
                Text("Drink Quiz")
                    .font(.largeTitle.bold())
                
                Button {
                    
                } label: {
                    Image(systemName: "play.fill")
                    Text("Start")
                }
                .buttonStyle(.borderedProminent)
                
                Button {
                    
                } label: {
                    Image(systemName: "info.circle.fill")
                    Text("About Us")
                }
                .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    QuizStartView(phase: .constant(.start))
}
