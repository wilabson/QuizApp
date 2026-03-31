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
                    
                    Spacer()
                }
                .padding(.horizontal, 100)
        }
    }
}

struct ButtonGradient {
    static let logoGradient = LinearGradient(
        colors: [
            Color(red: 1.0, green: 0.7, blue: 0.2),
            Color(red: 0.95, green: 0.1, blue: 0.35)
        ], startPoint: .top, endPoint: .bottom)
}

#Preview {
    QuizStartView(phase: .constant(.start))
}
