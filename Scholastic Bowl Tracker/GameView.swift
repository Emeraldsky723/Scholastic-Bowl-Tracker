//
//  GameView.swift
//  Scholastic Bowl Tracker
//
//  Created by SCOTT LOZOYA on 10/23/26.
//

import SwiftUI
import SwiftData
struct GameView: View {
    @State var score1 = 0
    @State var score2 = 0
    @State private var appData = AppData.shared
    @Environment(\.modelContext) var context
    @Environment(\.dismiss) var dismiss

    @State var endGame = false
    @State var saveScreen = false
    var body: some View {
        NavigationStack{
            VStack{
                
                
                HStack{
                    Spacer()
                    NavigationLink{
                        GameSettingsView()
                    }
                    label:{
                        Image(systemName: "gearshape.fill")
                            .resizable()
                            .frame(maxWidth: 30, maxHeight: 30)
                            .foregroundStyle(.gray)
                    }
                    
                }
                Spacer()
                HStack{
                    Spacer()
                    if appData.currentMatchData.team1Name.isEmpty{
                        Text("Team 1")
                            .foregroundStyle(.green)
                    }
                    else{
                        Text(appData.currentMatchData.team1Name)
                            .foregroundStyle(.green)
                        
                    }
                    Spacer()
                    Spacer()
                    Spacer()
                    if appData.currentMatchData.team2Name.isEmpty{
                        Text("Team 2")
                            .foregroundStyle(.green)
                    }
                    else{
                        Text(appData.currentMatchData.team2Name)
                            .foregroundStyle(.green)
                    }
                    Spacer()
                }
                HStack{
                    
                    Button{
                        AppData.shared.currentMatchData.addTeam1Score()
                    }
                    label:{
                        Text("\(AppData.shared.currentMatchData.team1Score)")
                            .frame(maxWidth: 150, maxHeight: 150)
                            .background(.green)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                    }
                    Spacer()
                    Button{
                        AppData.shared.currentMatchData.addTeam2Score()
                    }
                    label:{
                        Text("\(AppData.shared.currentMatchData.team2Score)")
                            .frame(maxWidth: 150, maxHeight: 150)
                            .background(.green)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        
                    }
                }
                Spacer()
                Button("End the Match"){
                    endGame = true
                }

            }
            .padding()
            .background(.black)
            .alert(appData.currentMatchData.determineWinner(), isPresented: $endGame, actions: {
                Button("Cool"){
                    endGame = false
                    saveScreen = true
                }
            })
            .alert("Do you want to save?", isPresented: $saveScreen) {
                Button("Yes"){
                    context.insert(appData.currentMatchData)
                    try? context.save()
                    endGame = false
                    dismiss()


                }
                Button("No"){
                    endGame = false
                    dismiss()

                }
            }
        }
    }
}

#Preview {
    GameView()
}
