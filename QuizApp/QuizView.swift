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
    
    @State private var questionIndex: Int = 8
    @State private var score: Int = 0
    @State private var selectedIndex: Int? = nil
    @State private var questionsAsked: Int = 1
    
    private let maxQuestions: Int = 12
    private let questions = Question.allQuestions
    private var currentQuestion: Question { questions[questionIndex]
        
    }
    

    var body: some View {
            ScrollView {
                VStack (spacing: 20){
                    HStack {
                        Text("Fråga \(questionsAsked) av \(maxQuestions)")
                        Spacer()
                        Text("Rätt svar: \(score)")
                    } // end HStack Topp
                    Text(currentQuestion.questionText)
                        .font(.title2)
                        .bold()
                        .padding(10)
                } // end VStack top
                VStack (alignment: .leading, spacing: 20){

                        ForEach(currentQuestion.options.indices, id: \.self) { index in
                            Button(action: {
                                self.selectedIndex = index
                                if index == currentQuestion.correctIndex {
                                    self.score += 1
                                }
                                if questionsAsked < maxQuestions {
                                    selectedIndex = nil
                                    questionIndex += 1
                                    questionsAsked += 1
                                }
                                else {
                                    finalScore = score
                                    phase = .result
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
                            .disabled(selectedIndex != nil) //gör att man bara kan svara en gång
                            .animation(.easeInOut(duration: 0.3), value: selectedIndex)
                        }
                    } // end VStack questions
                    
                }
            .padding(20)
            }
    
}

#Preview {
    QuizView(phase: .constant(.quiz), finalScore: .constant(0))
}
