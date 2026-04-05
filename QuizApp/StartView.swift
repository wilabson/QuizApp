//
//  StartView.swift
//  QuizApp
//
//  Created by Stina Thun on 2026-03-29.
//

import SwiftUI

struct QuizStartView: View {
    @Binding var phase: QuizPhase
    @Binding var maxQuestions: Int
    @State private var isShowingSettings = false
    
    var body: some View {
        VStack {
            Group {
                Image("AppLogo")
                    .resizable()
                    .frame(width: 200, height: 200)
                
                Text("Drink Quiz")
                    .font(.largeTitle.bold())
                    .padding(.bottom, 60)
            }
            .padding(.top, 24)
            
            VStack (spacing: 24){
                
                Button {
                    withAnimation {
                        phase = .quiz
                    }
                } label: {
                    Image(systemName: "play.fill")
                    Text("Start")
                }
                .padding()
                .frame(maxWidth: .infinity)
                .font(.title3.bold())
                .background(ButtonGradient.logoGradient)
                .foregroundStyle(.white)
                .cornerRadius(12)
                .shadow(radius: 4)
                
                Button {
                    isShowingSettings = true
                } label: {
                    Image(systemName: "gearshape.fill")
                    Text("Inställningar")
                }
                .padding()
                .frame(maxWidth: .infinity)
                .font(.title3.bold())
                .background(.ultraThinMaterial)
                .foregroundStyle(.primary)
                .cornerRadius(12)
                .shadow(radius: 4)
                
                Spacer()
            }
            .padding(.horizontal, 100)
            Text("Made by Group 5")
        }
        .background(BackgroundGradient.backgroundGradient)
            
        .sheet(isPresented: $isShowingSettings) {
            SettingsView(questionAmount: $maxQuestions, isShowingSettings: $isShowingSettings)
        }
        
    }
    
}

#Preview {
    QuizStartView(phase: .constant(.start), maxQuestions: .constant(0))
}
