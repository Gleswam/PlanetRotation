//
//  PlanetRotationApp.swift
//  PlanetRotation
//
//  Created by Глеб Малов on 07/12/21.
//

import SwiftUI

@main
struct PlanetRotationApp: App {
    
    @StateObject var viewModel: ViewModel = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ViewModel())
        }
    }
}
