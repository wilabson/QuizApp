# 🍹 QuizApp

A fun quiz app built with SwiftUI.  
Test your knowledge and win a drink! 🧠🍻

---

## 🚀 Features

- 🎯 Multiple choice quiz
- 🔢 Choose number of questions from settings
- 🏆 High Score system (saved locally using AppStorage)
- 🎨 Clean and modern UI (SwiftUI + gradients)
- 📱 Smooth user experience

---

## 🧠 How it works

1. Start the quiz  
2. Choose number of questions  
3. Answer questions  
4. See your result  
5. Your best score is saved automatically  

---

## 💾 High Score

The app saves your highest score locally on your device using:

```swift
@AppStorage("highScore") var highScore = 0
