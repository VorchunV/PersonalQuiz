//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Nikita Zharinov on 01/11/2021
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var animalResult: UILabel!
    @IBOutlet var animalResultDescription: UILabel!
    var answerChosen: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countingTheResult()
        self.navigationItem.hidesBackButton = true
    
    }
    
    func countingTheResult() {
        var countingSelectedAnimals: [AnimalType: Int] = [:]
        let animals = answerChosen.map{ $0.type }
        
        for animal in animals {
            countingSelectedAnimals[animal] = (countingSelectedAnimals[animal] ?? 0) + 1
            
        }
        print(countingSelectedAnimals)
       
        let filteredResponse = countingSelectedAnimals.filter{ $0.value > 1 }
        
        let mostCommonAnswer = filteredResponse.first!.key
        
        
        animalResult.text = String(mostCommonAnswer.rawValue)
        
        animalResultDescription.text = mostCommonAnswer.definition
    }

    
    
}
