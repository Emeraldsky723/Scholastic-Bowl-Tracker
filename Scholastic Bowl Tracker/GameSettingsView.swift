//
//  GameSettingsView.swift
//  Scholastic Bowl Tracker
//
//  Created by SCOTT LOZOYA on 10/23/26.
//

import SwiftUI

struct GameSettingsView: View {
    @State var team1Name = ""
    @State var team2Name = ""
    var body: some View {
        VStack{
            TextField("Enter team 1 name",text: $team1Name)
            Button{
                AppData.shared.currentMatchData.changeTeam1Name(name: team1Name)
            }
            label:{
                Text("Save Button")
            }
            TextField("Enter team 2 name",text: $team2Name)
            Button{
                AppData.shared.currentMatchData.changeTeam2Name(name: team2Name)            }
            label:{
                Text("Save Button")
            }

        }
        .padding()
    }
}

#Preview {
    GameSettingsView()
}
