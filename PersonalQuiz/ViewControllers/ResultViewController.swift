//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Nikita Zharinov on 01/11/2021.
//

import UIKit

class ResultViewController: UIViewController {
    
    var answerChosen: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countingTheResult()
        
    }
    
    func countingTheResult() {
        var countingSelectedAnimals: [AnimalType: Int] = [:]
        let animals = answerChosen.map{ $0.type }
        
        for animal in animals {
            countingSelectedAnimals[animal] = (countingSelectedAnimals[animal] ?? 0) + 1
            
        }
        let sortingResponse = countingSelectedAnimals.sorted {$0.value > $1.value}
        let mostCommonAnswer = sortingResponse.first!.key
        
        
    }
    
    
    
    // 1. Передать сюда массив с ответами +
    // 2. Определить наиболее часто встречающийся тип животного
    // 3. Отобразить результаты в соотвствии с этим животным
    // 4. Избавиться от кнопки возврата назад на экране результатов
    
}
