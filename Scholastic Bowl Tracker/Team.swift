//
//  Team.swift
//  Scholastic Bowl Tracker
//
//  Created by SCOTT LOZOYA on 10/23/26.
//

import Foundation

class Team{
    var teamName: String
    var roster: [Student]
    
    init(teamName: String, roster: [Student]) {
        self.teamName = teamName
        self.roster = roster
    }
    
    func rawScoreLineup() -> [Student]{
        var lineup: [Student] = []
        
        return lineup
    }
    func varietyScoreLineup() -> [Student]{
        var lineup: [Student] = []
        
        return lineup
    }
    
    //maybe an int for determining which speciality it is then just have If statements for each number?
    func specialityLineup() -> [Student]{
        var lineup: [Student] = []
        
        return lineup
    }
    
    func stemOrHumanitiesLineup(stem: Bool) -> [Student]{
        var lineup: [Student] = []
        
        return lineup
    }


    
}
