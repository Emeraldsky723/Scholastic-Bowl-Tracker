//
//  PastGameResultsView.swift
//  Scholastic Bowl Tracker
//
//  Created by SCOTT LOZOYA on 10/23/26.
//

import SwiftUI

struct PastGameResultsView: View {
    @State var match: MatchClass
    var body: some View {
        Text(match.team1Name + " vs. " + match.team2Name)
        Text(match.team1Name + " had \(match.team1Score)")
        Text(match.team2Name + " had \(match.team2Score)")
        Text(match.determineWinner())

    }
}

#Preview {
    PastGameResultsView(match: MatchClass())
}
