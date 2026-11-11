//
//  Team.swift
//  Scholastic Bowl Tracker
//
//  Created by SCOTT LOZOYA on 10/23/26.
//

import Foundation
import SwiftData
@Model
class Team{
    var teamName: String
    var roster: [Student]
    
    init() {
        teamName = "Default Team"
        roster = []
    }
    
    func rawScoreLineup() -> [Student]{
        var lineup: [Student] = []
        
        return lineup
    }
    func varietyScoreLineup() -> [Student]{
        var lineup: [Student] = []
        
        return lineup
    }
    func rankingsSpecialtys(speciality: Int) -> [Student] {
        //put the highest scores first
        var rankings: [Student] = []
        for index in 0..<roster.count{
            if roster[index].specialty == speciality{
                rankings.append(roster[index])
            }
        }
        
        
        
        return rankings
    }

    
}
