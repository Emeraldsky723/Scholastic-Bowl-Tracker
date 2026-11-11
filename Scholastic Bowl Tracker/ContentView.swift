//
//  ContentView.swift
//  Scholastic Bowl Tracker
//
//  Created by SCOTT LOZOYA on 10/23/26.
//

import SwiftUI
import SwiftData
@Observable
class AppData{
    var currentMatchData = MatchClass()
    static let shared = AppData()
    private init(){}
}


struct ContentView: View {
    @Environment(\.modelContext) var context
    @Query var matches: [MatchClass]
    @Query var tempTeam: [Team]
    @State var team = Team()
    var body: some View {
        NavigationStack{
            VStack {
                HStack{
                    Spacer()
                    NavigationLink{
                     CoachSettingsView(team: team)
                    }
                    label:{
                        Image(systemName: "gearshape.fill")
                            .resizable()
                            .frame(maxWidth: 30, maxHeight: 30)
                            .foregroundStyle(.black)
                    }
                    
                }
                Text("Scholastic Bowl")
                    .font(.custom("Didot Bold", size: 50, relativeTo: .largeTitle))
                Text("Tracker")
                    .font(.custom("Didot Bold", size: 50, relativeTo: .largeTitle))
                Spacer()
                NavigationLink{
                    GameView()
                }
                label:{
                    Text(" New Game       ")
                        .font(.custom("Didot Bold", size: 30, relativeTo: .largeTitle))
                        .padding()
                        .foregroundStyle(.black)
                        .background(.red)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    
                }
                NavigationLink{
                    PastGameView()
                }
                label:{
                    Text("See Past Games")
                        .font(.custom("Didot Bold", size: 30, relativeTo: .largeTitle))
                        .padding()
                        .foregroundStyle(.black)
                        .background(.red)
                        .clipShape(RoundedRectangle(cornerRadius: 20))

                }
                NavigationLink{
                    RosterView()
                }
                label:{
                    Text("See Roster")
                        .font(.custom("Didot Bold", size: 30, relativeTo: .largeTitle))
                        .padding()
                        .foregroundStyle(.black)
                        .background(.red)
                        .clipShape(RoundedRectangle(cornerRadius: 20))

                }
                Spacer()
                Spacer()
            }
            .padding()
            .background(.blue)
            .onAppear{
                AppData.shared.currentMatchData = MatchClass()
                 team = tempTeam.first ?? Team()
                context.insert(team)
            }
           
            
        }
    }
}

#Preview {
    ContentView()
}
