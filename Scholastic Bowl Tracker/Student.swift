//
//  Student.swift
//  Scholastic Bowl Tracker
//
//  Created by SCOTT LOZOYA on 10/23/26.
//

import Foundation
import SwiftData
@Model
class Student: Identifiable{
    var id = UUID()
    var name: String
    var rawScore: Int
    var fineArtsScore: Int
    var literatureScore: Int
    var historyScore: Int
    var scienceScore: Int
    var specialty: Int
    var scores: [Int]
   // var specialtyRanking: Int
    //Tier 1 Fine arts, literature, history, science
    //Tier 2 Mythology, Religion, Geography, Current Events, Pop culture, Philosphy, Math, General Knowledge
    //prioritize Tier 1
    //make the 5th person choice with this format: grab each next best person in the tier 1 categories, look at their raw score, the highest raw score goes on the specialized line up
    
    init(name: String) {
        self.name = name
        rawScore = 0
        fineArtsScore = 0
        literatureScore = 0
        historyScore = 0
        scienceScore = 0
        specialty = -1
       // specialtyRanking = -1
       scores = []
        print(self.name + " was made in the class")
       }
    
    func getSpeciality() -> Int{
        var highestScore = 0
        scores = makeScoresArray()
        for index in 0..<scores.count{
            if scores[index] > highestScore{
                highestScore = scores[index]
            }
            
        }
        //the numbers are the same spot as they are in the scores array
            if highestScore == fineArtsScore {
                return 1
            }
        else if highestScore == literatureScore{
            return 2
        }
        else if highestScore == historyScore{
            return 3
        }
        else if highestScore == scienceScore{
            return 4
        }
        else{
            return -1
        }
        
    }
    func makeScoresArray() -> [Int]{
        let scores = [rawScore, fineArtsScore, literatureScore, historyScore, scienceScore]
        return scores
    }
    
    
}
