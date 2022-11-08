//
//  HelloCoreDataApp.swift
//  HelloCoreData
//
//  Created by mert can çifter on 7.11.2022.
//

import SwiftUI

@main
struct HelloCoreDateApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(coreDM: CoreDataManager())
        }
    }
}
