//
//  Dance_GuessApp.swift
//  Dance_Guess
//
//  Created by Abdusamad Mamasoliyev on 30/01/24.
//

import SwiftUI

@main
struct Dance_GuessApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
