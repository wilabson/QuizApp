//
//  SettingsView.swift
//  QuizApp
//
//  Created by William Albinsson on 2026-04-01.
//

import SwiftUI

struct SettingsView: View {
    
    @Binding var questionAmount: Int
    @Binding var isShowingSettings: Bool
    
    var body: some View {
        VStack {
            Group {
                Image("AppLogo")
                    .resizable()
                    .frame(width: 200, height: 200)
                
                Text("Inställningar")
                    .font(.largeTitle.bold())
                    .padding(.bottom, 60)
            }
            .padding(.top, 24)
            
            VStack (spacing: 24){
                Text("Antal frågor att besvara:")
                    .bold()
                Picker("Antal frågor att besvara", selection: $questionAmount) {
                    ForEach(1 ..< 9) {
                        Text("\($0) frågor")
                            .tag($0)
                    }
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: 56)
                .background(ButtonGradient.logoGradient)
                .tint(.white)
                .cornerRadius(12)
                .shadow(radius: 4)

                
                Button {
                    isShowingSettings = false
                } label: {
                    Image(systemName: "info.circle.fill")
                    Text("Tillbaka")
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
        .background(
            LinearGradient(
                colors: [
                    Color(red: 1.0, green: 0.75, blue: 0.40),
                    Color(red: 0.95, green: 0.20, blue: 0.45)
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        )
        
    }
    
}

#Preview {
    SettingsView(questionAmount: .constant(2), isShowingSettings: .constant(true))
}
