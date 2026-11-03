//
//  Match.swift
//  Scholastic Bowl Tracker
//
//  Created by SCOTT LOZOYA on 10/27/26.
//

import Foundation
import SwiftData
@Model
class MatchClass{
    var team1Name = "Team 1"
    var team2Name = "Team 2"
    var team1Score = 0
    var team2Score = 0
    
    var team1Winner = false
    var team2Winner = false
    var id = UUID()
    
    init(){
        
    }
    func changeTeam1Name(name: String){
        team1Name = name
    }
    func changeTeam2Name(name: String){
        team2Name = name
    }
    func determineWinner() -> String{
        if team1Score > team2Score{
            team1Winner = true
            return "The winner is " + team1Name
        }
        else if team1Score > team2Score{
            team2Winner = true
            return "The winner is " + team2Name
        }
        else{
            return "It was a tie"
        }
    }
    func addTeam1Score(){
        team1Score += 1
    }
    func addTeam2Score(){
        team2Score += 1
    }
    func getWinner() -> String {
        if team1Winner == true{
            return team1Name
        }
        else if team2Winner == true{
            return team2Name
        }
        else{
            return "Tie"
        }
    }
    
    
}
