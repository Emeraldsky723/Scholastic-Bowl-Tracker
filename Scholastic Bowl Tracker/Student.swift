//
//  Student.swift
//  Scholastic Bowl Tracker
//
//  Created by SCOTT LOZOYA on 10/23/26.
//

import Foundation

class Student{
    var name: String
    var rawScore: Int
    var mathScore: Int
    var socialStudiesScore: Int
    //if true they are STEM, if not they are Humanities
    var stem: Bool
    
    init(name: String) {
        self.name = name
        rawScore = 0
        mathScore = 0
        socialStudiesScore = 0
        stem = true
    }
    //have the ranking input variable
    func getSpeciality(){
        
    }
    
}
