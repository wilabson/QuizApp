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
        VStack(spacing: 24) {
                Image("AppLogo")
                
                Text("Drink Quiz")
                    .font(.largeTitle.bold())
                
                Button {
                    
                } label: {
                    Image(systemName: "play.fill")
                    Text("Start")
                }
                .padding()
                .frame(maxWidth: .infinity)
                .font(.title3.bold())
                .background(.green)
                .foregroundStyle(.white)
                .cornerRadius(12)
                .shadow(radius: 4)
                
                Button {
                    
                } label: {
                    Image(systemName: "info.circle.fill")
                    Text("About Us")
                }
                .padding()
                .frame(maxWidth: .infinity)
                .font(.title3.bold())
                .background(.green)
                .foregroundStyle(.white)
                .cornerRadius(12)
                .shadow(radius: 4)
        }
        .padding()
    }
}

#Preview {
    QuizStartView(phase: .constant(.start))
}
