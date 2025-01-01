//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Adrian Mowat on 31/12/2024.
//

import SwiftData
import SwiftUI

@main
struct BookwormApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Book.self)
    }
}
