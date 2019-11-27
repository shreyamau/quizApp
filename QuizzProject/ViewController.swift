//
//  ViewController.swift
//  QuizzProject
//
//  Created by student on 2019-11-26.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
   
    @IBOutlet var questionLabel : UILabel!
    @IBOutlet var answerLabel : UILabel!
    let questions: [String] = [
    " what is 3+4 ? ",
    " what is the capital of India ?",
    " What is rasgulla made from ?"
    ]
    let answers: [String] = [
    "7",
    "Delhi",
    "Paneer"
    ]
    var currentQuestionIndex: Int = 0

    @IBAction func showNextQuestion(_sender: UIButton){
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
        currentQuestionIndex = 0
        }
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_sender: UIButton){
        let answer : String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
}

