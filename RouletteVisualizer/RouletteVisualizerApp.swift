//
//  RouletteVisualizerApp.swift
//  RouletteVisualizer
//
//  Created by Kevin Green on 12/9/24.
//

import SwiftUI

@main
struct RouletteVisualizerApp: App {
    @StateObject var bettingVM: BettingsViewModel = BettingsViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(bettingVM)
        }
    }
}
