//
//  Game.swift
//  OpenQuizz
//
//  Created by Marion FANJAUD on 17/03/2018.
//  Copyright © 2018 Marion FANJAUD. All rights reserved.
//

import Foundation

class Game {
    var score = 0
    
    var questions = [Question]()
    var currentIndex = 0
    
    var state: State = .ongoing
    
    enum State {
        case ongoing, over
    }
    
    var currentQuestion: Question {
        return questions[currentIndex]
    }
    
    func refresh() {
        score = 0
        currentIndex = 0
        state = .over
        
        QuestionManager.shared.get{(questions) in
            self.questions = questions
            self.state = .ongoing
            let name = Notification.Name(rawValue: "QuestionsLoaded")
            let notification = Notification(name: name)
            NotificationCenter.default.post(notification)
        }
    }
    
    func answerCurrentQuestion(with answer: Bool) {
        if (currentQuestion.isCorrect && answer) || (!currentQuestion.isCorrect && !answer) {
            score += 1
        }
        goToNextQuestion()
    }
    
    func goToNextQuestion() {
        if currentIndex < questions.count - 1 {
            currentIndex += 1
        } else {
            finishGame()
        }
    }
    
    func finishGame() {
        state = .over
    }
}
