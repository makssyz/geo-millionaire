//
//  Guesser.swift
//  GeoMillionaire
//
//  Created by stud18 on 31.05.21.
//

import SwiftUI


let answers: [String] = [
    "Germany",
    "France",
    "United Kingdom",
    "Ireland",
    "Denmark",
    "Norway",
    "Sweden",
    "Finland",
    "Belgium",
    "Netherlands",
    "Spain",
    "Portugal",
    "Italy",
    "Austria",
    "Switzerland",
    "Poland",
    "Czechia",
    "Hungary"
]

var correctAnswer: Int = 7  //Zufallszahl nach jedem Laden
var userScore: Int = 0

struct Guesser: View {
    var answerA: String = "Answer 1"
    var answerB: String = "Answer 2"
    var answerC: String = "Answer 3"
    var answerD: String = "Answer 4"
    
    init() {
        var randomAnswer1: Int = Int.random(in: 0..<answers.count)
        var randomAnswer2: Int = Int.random(in: 0..<answers.count)
        var randomAnswer3: Int = Int.random(in: 0..<answers.count)
        var randomAnswer4: Int = Int.random(in: 0..<answers.count)
        
        while randomAnswer1==correctAnswer {
            randomAnswer1 = Int.random(in: 0..<answers.count)
        }
        while randomAnswer2==correctAnswer || randomAnswer2==randomAnswer1 {
            randomAnswer2 = Int.random(in: 0..<answers.count)
        }
        while randomAnswer3==correctAnswer || randomAnswer3==randomAnswer1 || randomAnswer3==randomAnswer2 {
            randomAnswer3 = Int.random(in: 0..<answers.count)
        }
        while randomAnswer4==correctAnswer || randomAnswer4==randomAnswer1 || randomAnswer4==randomAnswer2 || randomAnswer4==randomAnswer3 {
            randomAnswer4 = Int.random(in: 0..<answers.count)
        }
        
        let randomSpotForCorrectAnswer = Int.random(in: 0..<4)
        
        for index in 0..<4 {
            switch index {
            case 0:
                if index==randomSpotForCorrectAnswer {
                    self.answerA = answers[correctAnswer]
                } else {
                    self.answerA = answers[randomAnswer1]
                }
            case 1:
                if index==randomSpotForCorrectAnswer {
                    self.answerB = answers[correctAnswer]
                } else {
                    self.answerB = answers[randomAnswer2]
                }
            case 2:
                if index==randomSpotForCorrectAnswer {
                    self.answerC = answers[correctAnswer]
                } else {
                    self.answerC = answers[randomAnswer3]
                }
            case 3:
                if index==randomSpotForCorrectAnswer {
                    self.answerD = answers[correctAnswer]
                } else {
                    self.answerD = answers[randomAnswer4]
                }
            default:
                print("ERROR")
            }
        }
    }
    
    @State private var colorAnswerA: Color = Color.accentColor
    @State private var colorAnswerB: Color = Color.accentColor
    @State private var colorAnswerC: Color = Color.accentColor
    @State private var colorAnswerD: Color = Color.accentColor
    @State private var answerButtonsDisabled: Bool = false
    @State private var givenAnswerWasCorrect: Bool = false
    var body: some View {
        VStack(spacing: 25) {
            Text("Score: \(userScore)")
            Text("Where are you?")
                .font(.title)
                .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
                .foregroundColor(.white)
                .background(Color.accentColor)
                .cornerRadius(50)
                .padding(.leading, 5)
                .padding(.trailing, 5)
            VStack(spacing: 10) {
                HStack(spacing: 5) {
                    Button(
                        action: {
                            if answerA == answers[correctAnswer] {
                                userScore += 1
                                self.colorAnswerA = Color.green
                                self.givenAnswerWasCorrect = true
                            } else {
                                self.colorAnswerA = Color.red
                                if answerB == answers[correctAnswer] {
                                    self.colorAnswerB = Color.green
                                } else if answerC == answers[correctAnswer] {
                                    self.colorAnswerC = Color.green
                                } else if answerD == answers[correctAnswer] {
                                    self.colorAnswerD = Color.green
                                }
                                self.givenAnswerWasCorrect = false
                            }
                            answerButtonsDisabled = true
                        }
                    ) {
                        Text(answerA)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
                    .foregroundColor(.white)
                    .background(colorAnswerA)
                    .cornerRadius(50)
                    .padding(.leading, 5)
                    .disabled(answerButtonsDisabled)
                    
                    Button(
                        action: {
                            if answerB == answers[correctAnswer] {
                                userScore += 1
                                self.colorAnswerB = Color.green
                                self.givenAnswerWasCorrect = true
                            } else {
                                self.colorAnswerB = Color.red
                                if answerC == answers[correctAnswer] {
                                    self.colorAnswerC = Color.green
                                } else if answerD == answers[correctAnswer] {
                                    self.colorAnswerD = Color.green
                                } else if answerA == answers[correctAnswer] {
                                    self.colorAnswerA = Color.green
                                }
                                self.givenAnswerWasCorrect = false
                            }
                            answerButtonsDisabled = true
                        }
                    ) {
                        Text(answerB)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
                    .foregroundColor(.white)
                    .background(colorAnswerB)
                    .cornerRadius(50)
                    .padding(.trailing, 5)
                    .disabled(answerButtonsDisabled)
                }
                HStack(spacing: 5) {
                    Button(
                        action: {
                            if answerC == answers[correctAnswer] {
                                userScore += 1
                                self.colorAnswerC = Color.green
                                self.givenAnswerWasCorrect = true
                            } else {
                                self.colorAnswerC = Color.red
                                if answerD == answers[correctAnswer] {
                                    self.colorAnswerD = Color.green
                                } else if answerA == answers[correctAnswer] {
                                    self.colorAnswerA = Color.green
                                } else if answerB == answers[correctAnswer] {
                                    self.colorAnswerB = Color.green
                                }
                                self.givenAnswerWasCorrect = false
                            }
                            answerButtonsDisabled = true
                        }
                    ) {
                        Text(answerC)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
                    .foregroundColor(.white)
                    .background(colorAnswerC)
                    .cornerRadius(50)
                    .padding(.leading, 5)
                    .disabled(answerButtonsDisabled)
                    
                    Button(
                        action: {
                            if answerD == answers[correctAnswer] {
                                userScore += 1
                                self.colorAnswerD = Color.green
                                self.givenAnswerWasCorrect = true
                            } else {
                                self.colorAnswerD = Color.red
                                if answerA == answers[correctAnswer] {
                                    self.colorAnswerA = Color.green
                                } else if answerB == answers[correctAnswer] {
                                    self.colorAnswerB = Color.green
                                } else if answerC == answers[correctAnswer] {
                                    self.colorAnswerC = Color.green
                                }
                                self.givenAnswerWasCorrect = false
                            }
                            answerButtonsDisabled = true
                        }
                    ) {
                        Text(answerD)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
                    .foregroundColor(.white)
                    .background(colorAnswerD)
                    .cornerRadius(50)
                    .padding(.trailing, 5)
                    .disabled(answerButtonsDisabled)
                }
            }
            Button(
                action: {
                    // Wenn auf "Next Location" geklickt wird: Weiter zu Street View
                    // Wenn auf "End Game" geklickt wird: Weiter zum Startbildschirm
                }
            ) {
                Text(givenAnswerWasCorrect ? "Next Location" : "End Game")
            }
            .frame(maxWidth: .infinity, maxHeight: 50, alignment: .center)
            .foregroundColor(.white)
            .background(Color.accentColor)
            .cornerRadius(50)
            .padding(.leading, 50)
            .padding(.trailing, 50)
            .opacity(answerButtonsDisabled ? 1 : 0)
        }
        .frame(maxWidth: 400)
    }
}

struct Guesser_Previews: PreviewProvider {
    static var previews: some View {
        Guesser()
    }
}
