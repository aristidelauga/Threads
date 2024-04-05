//
//  ThreadsApp.swift
//  Threads
//
//  Created by Aristide LAUGA on 06/04/2024.
//

import SwiftUI

@main
struct ThreadsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
