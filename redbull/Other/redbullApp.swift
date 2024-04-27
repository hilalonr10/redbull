//
//  redbullApp.swift
//  redbull
//
//  Created by Hilal Öner on 4/27/24.
//
import FirebaseCore
import SwiftUI

@main
struct redbullApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
