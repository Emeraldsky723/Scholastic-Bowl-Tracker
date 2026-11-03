//
//  PastGameView.swift
//  Scholastic Bowl Tracker
//
//  Created by SCOTT LOZOYA on 10/23/26.
//

import SwiftUI
import SwiftData
struct PastGameView: View {
    @Query var matches: [MatchClass]
    var body: some View {
        NavigationStack{
            List{
                ForEach(matches, id: \.self.id){match in
                    NavigationLink(match.team1Name + " vs. " + match.team2Name){
                        PastGameResultsView(match: match)
                    }
                }
            }
        }
    }
}

#Preview {
    PastGameView()
}
