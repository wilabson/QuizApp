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
    
    @State private var questionIndex: Int = 1
    @State private var score: Int = 0
    @State private var selectedIndex: Int? = nil
    
    private let questions = Question.allQuestions
    private var currentQuestion: Question { questions[questionIndex] }
    

    var body: some View {
            ScrollView {
                VStack (spacing: 20){
                    Text(currentQuestion.questionText)
                        .font(.title2)
                        .bold()
                        .padding(10)
                } // end VStack
                VStack (alignment: .leading, spacing: 20){

                        ForEach(currentQuestion.options.indices, id: \.self) { index in
                            Button(action: {
                                self.selectedIndex = index
                                if index == currentQuestion.correctIndex {
                                    self.score += 1
                                }
                            }) {
                                HStack{
                                    Text("\(index + 1). ")
                                        .font(Font.body.bold())
                            
                                    Text(currentQuestion.options[index])
                                        .font(Font.body.bold())
                                        .foregroundStyle(Color.secondary)
                                        .padding(20)
                                    Spacer()
                            
                                }
                                .padding(.horizontal, 30)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .foregroundColor(Color.white)
                                        .shadow(radius: 10)
                                )
                                .padding(10)

                            }
                        }
                    } // end VStack
                    
                }
            .padding(20)
            }
    
}

#Preview {
    QuizView(phase: .constant(.quiz), finalScore: .constant(0))
}
