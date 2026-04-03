import SwiftUI

struct ResultView: View {
    let score: Int
    let total: Int
    @Binding var phase: QuizPhase

    var body: some View {
        ZStack {
            BackgroundGradient.backgroundGradient
                .ignoresSafeArea()

            VStack(spacing: 24) {
                Spacer()

                Image(systemName: "checkmark.seal.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 85, height: 85)
                    .foregroundStyle(.white.opacity(0.95))
                    .shadow(radius: 6)

                Text("Resultat")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)

                Text("Du fick \(score) av \(total)")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)

                if score == total {

                    Text("Skål! 🍻")
                        .font(.headline)
                        .foregroundColor(.black)

                    Text("Du vann en drink på huset! 🍹")
                        .font(.headline)
                        .foregroundColor(.black)

                    Text("Besök bartendern och hämta din gratisdrink.")
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                        .padding(.horizontal, 24)

                } else if score >= total / 2 {
                    Text("Snyggt jobbat! 👏")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)

                } else {
                    Text("Bra! Försök igen 😊")
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundColor(.black)
                }

                Button {
                    phase = .start
                } label: {
                    Text("Spela igen")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .frame(maxWidth: 220)
                        .padding()
                        .background(ButtonGradient.logoGradient)
                        .cornerRadius(14)
                        .shadow(radius: 6)
                }
                .padding(.top, 12)

                Spacer()

                Text("Made by Group 5")
                    .font(.footnote)
                    .foregroundColor(.black.opacity(0.85))
                    .padding(.bottom, 20)
            }
            .padding()
        }
    }
}

#Preview {
    ResultView(score: 12, total: 12, phase: .constant(.result))
}
