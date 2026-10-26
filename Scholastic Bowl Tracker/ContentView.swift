//
//  ContentView.swift
//  Scholastic Bowl Tracker
//
//  Created by SCOTT LOZOYA on 10/23/26.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        NavigationStack{
            VStack {
                HStack{
                    Spacer()
                    NavigationLink{
                     CoachSettingsView()
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
                Spacer()
                Spacer()
            }
            .padding()
            .background(.blue)
        }
    }
}

#Preview {
    ContentView()
}
