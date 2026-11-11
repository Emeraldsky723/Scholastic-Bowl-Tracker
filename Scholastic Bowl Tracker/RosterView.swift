//
//  RosterView.swift
//  Scholastic Bowl Tracker
//
//  Created by SCOTT LOZOYA on 10/23/26.
//

import SwiftUI
import SwiftData
struct RosterView: View {
    @Query var roster: [Student]
    @Query var team: [Team]
    var body: some View {
        Text(team.first?.teamName ?? "Nothing")
        ScrollView{
            
                ForEach(roster, id: \.self.id){student in
                    Text(student.name)
                    
                    
                }
               
            
        }
    }
}

#Preview {
    RosterView()
}
