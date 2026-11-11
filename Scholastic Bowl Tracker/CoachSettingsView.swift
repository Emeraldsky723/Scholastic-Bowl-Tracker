//
//  CoachSettingsView.swift
//  Scholastic Bowl Tracker
//
//  Created by SCOTT LOZOYA on 10/23/26.
//

import SwiftUI
import SwiftData
struct CoachSettingsView: View {
    @State var name = ""
    
    @Bindable var team: Team
    @State var teamName = ""
    @Environment(\.modelContext) var context
    var body: some View {
        VStack{
            TextField("Please enter the team name", text: $teamName)
            Button("Save name"){
                team.teamName = teamName
                print(team.teamName)
            }
            
            TextField("Please enter the name of the Student", text: $name)
            Button("Save Student"){
                
                let student = Student(name: name)
                context.insert(student)
                team.roster.append(student)
                print(student.name + "was added to the array and saved")
                name = ""
            }
        }
        .onAppear(){
            
        }
    }
        
}

#Preview {
    CoachSettingsView(team: Team())
}
