//
//  ToDoSwiftUIApp.swift
//  ToDoSwiftUI
//
//  Created by Дмитрий Чумаков on 03.10.2020.
//

import SwiftUI

@main
struct ToDoSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
