//
//  Scholastic_Bowl_TrackerApp.swift
//  Scholastic Bowl Tracker
//
//  Created by SCOTT LOZOYA on 10/23/26.
//

import SwiftUI
import SwiftData
@main
struct Scholastic_Bowl_TrackerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: [MatchClass.self, Team.self])
        }
    }
}
