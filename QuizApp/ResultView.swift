import SwiftUI

struct ResultView: View {
    let score: Int
    let total: Int
    @Binding var phase: QuizPhase

    var body: some View {
        VStack(spacing: 30) {

            if score == total {
                // ⭐ Perfect
                Text("Perfekt! 🎯")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.green)
                
                Text("Skål! 🍻")
                    .font(.headline)

                Text("Du vann en drink på huset! 🍹")
                    .font(.headline)

                Text("Besök bartendern och hämta din gratisdrink.")
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)

            } else if score >= total / 2 {
                // 👍 Good
                Text("Bra jobbat! 🎉")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.green)

            } else {
                // ❌ Fail
                Text("Försök igen! 🙂")
                    .font(.title3)
            }

            // ✅ زر واحد فقط
            if score != total {
                Button(action: {
                    phase = .start
                }) {
                    Text("Spela igen")
                        .font(.title3)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                .padding(.horizontal)
            }
        }
        .padding()
    }
}

#Preview {
    ResultView(score: 0, total: 1, phase: .constant(.result))
}
