//
//  AnswerView.swift
//  GeoMillionaire
//
//  Created by stud18 on 31.05.21.
//

import SwiftUI

struct AnswerView: View {
    @Binding var viewState: String
    @Binding var currentCountry: String
    @Binding var currentLocation: Location
    @Binding var stakeNumber: Int
    @Binding var scoreNumber: Int
    var answerA: String = "Answer 1"
    var answerB: String = "Answer 2"
    var answerC: String = "Answer 3"
    var answerD: String = "Answer 4"
    init(viewState: Binding<String>, currentCountry: Binding<String>, currentLocation: Binding<Location>, stakeNumber: Binding<Int>, scoreNumber: Binding<Int>) {
        self._viewState = viewState
        self._currentCountry = currentCountry
        self._currentLocation = currentLocation
        self._stakeNumber = stakeNumber
        self._scoreNumber = scoreNumber
        
        var randomAnswer1: String = locations.randomElement()!.key
        var randomAnswer2: String = locations.randomElement()!.key
        var randomAnswer3: String = locations.randomElement()!.key
        var randomAnswer4: String = locations.randomElement()!.key
        
        while randomAnswer1==self.currentCountry {
            randomAnswer1 = locations.randomElement()!.key
        }
        while randomAnswer2==self.currentCountry || randomAnswer2==randomAnswer1 {
            randomAnswer2 = locations.randomElement()!.key
        }
        while randomAnswer3==self.currentCountry || randomAnswer3==randomAnswer1 || randomAnswer3==randomAnswer2 {
            randomAnswer3 = locations.randomElement()!.key
        }
        while randomAnswer4==self.currentCountry || randomAnswer4==randomAnswer1 || randomAnswer4==randomAnswer2 || randomAnswer4==randomAnswer3 {
            randomAnswer4 = locations.randomElement()!.key
        }
        
        let randomSpotForCorrectAnswer = Int.random(in: 0..<4)
        
        for index in 0..<4 {
            switch index {
            case 0:
                if index==randomSpotForCorrectAnswer {
                    self.answerA = self.currentCountry
                } else {
                    self.answerA = randomAnswer1
                }
            case 1:
                if index==randomSpotForCorrectAnswer {
                    self.answerB = self.currentCountry
                } else {
                    self.answerB = randomAnswer2
                }
            case 2:
                if index==randomSpotForCorrectAnswer {
                    self.answerC = self.currentCountry
                } else {
                    self.answerC = randomAnswer3
                }
            case 3:
                if index==randomSpotForCorrectAnswer {
                    self.answerD = self.currentCountry
                } else {
                    self.answerD = randomAnswer4
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
            Text("Score: \(scoreNumber)")
            Text("Money Bags: \(stakeNumber)")
                .opacity(answerButtonsDisabled ? 0 : 1)
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
                            if answerA == self.currentCountry {
                                self.scoreNumber = self.scoreNumber + self.stakeNumber
                                self.colorAnswerA = Color.green
                                self.givenAnswerWasCorrect = true
                            } else {
                                self.colorAnswerA = Color.red
                                if answerB == self.currentCountry {
                                    self.colorAnswerB = Color.green
                                } else if answerC == self.currentCountry {
                                    self.colorAnswerC = Color.green
                                } else if answerD == self.currentCountry {
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
                            if answerB == self.currentCountry {
                                self.scoreNumber = self.scoreNumber + self.stakeNumber
                                self.colorAnswerB = Color.green
                                self.givenAnswerWasCorrect = true
                            } else {
                                self.colorAnswerB = Color.red
                                if answerC == self.currentCountry {
                                    self.colorAnswerC = Color.green
                                } else if answerD == self.currentCountry {
                                    self.colorAnswerD = Color.green
                                } else if answerA == self.currentCountry {
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
                            if answerC == self.currentCountry {
                                self.scoreNumber = self.scoreNumber + self.stakeNumber
                                self.colorAnswerC = Color.green
                                self.givenAnswerWasCorrect = true
                            } else {
                                self.colorAnswerC = Color.red
                                if answerD == self.currentCountry {
                                    self.colorAnswerD = Color.green
                                } else if answerA == self.currentCountry {
                                    self.colorAnswerA = Color.green
                                } else if answerB == self.currentCountry {
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
                            if answerD == self.currentCountry {
                                self.scoreNumber = self.scoreNumber + self.stakeNumber
                                self.colorAnswerD = Color.green
                                self.givenAnswerWasCorrect = true
                            } else {
                                self.colorAnswerD = Color.red
                                if answerA == self.currentCountry {
                                    self.colorAnswerA = Color.green
                                } else if answerB == self.currentCountry {
                                    self.colorAnswerB = Color.green
                                } else if answerC == self.currentCountry {
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
                    if givenAnswerWasCorrect {
                        self.currentCountry = Location.getRandomCountry()
                        self.currentLocation = Location.getRandomLocationFromCountry(country: self.currentCountry)
                        self.viewState = "streetview"
                    } else {
                        let highScore = UserDefaults.standard.integer(forKey: "highScore")
                        if (highScore < scoreNumber) {
                            UserDefaults.standard.set(scoreNumber, forKey: "highScore")
                        }
                        scoreNumber = 0
                        self.viewState = "startview"
                    }
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

struct AnswerView_Previews: PreviewProvider {
    static var previews: some View {
        AnswerView(viewState: .constant("answerview"), currentCountry: .constant("Germany"), currentLocation: .constant(Location(name: "Potsdam", latitude: 52.3996937, longitude: 13.0483718)), stakeNumber: .constant(30), scoreNumber: .constant(1200))
    }
}
