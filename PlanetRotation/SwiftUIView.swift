//
//  SwiftUIView.swift
//  PlanetRotation
//
//  Created by Глеб Малов on 10/12/21.
//

import SwiftUI

struct SwiftUIView: View {
    
    

//   var model: Model
    @EnvironmentObject var viewModel: ViewModel
    @StateObject var planet3d = Planet3d()
    
    var body: some View {
        
        NavigationView {
            List{
            
            
                Button {
                    viewModel.nameModel = "Earth.usdz"
                    playSound(sound: "Exoplanet", type: "mp3")
                } label: {
                    Text("Earth")
                }
                Button {
                    viewModel.nameModel = "sea.usdz"
                    playSound(sound: "time_Eater", type: "mp3")
                    
                } label: {
                    Text("Sea Planet")
                }
                Button {
                    viewModel.nameModel = "Alien_Planet.usdz"
                    playSound(sound: "interstellar", type: "mp3")
                } label: {
                    Text("Alien Planet")
                }
                Button {
                    viewModel.nameModel = "VenusNASA.usdz"
                    playSound(sound: "Alliance", type: "mp3")
                } label: {
                    Text("Venus")
                }
                Button {
                    viewModel.nameModel = "Earth_new.usdz"
                    playSound(sound: "clemens", type: "mp3")
                } label: {
                    Text("Earth_new")
                }
                Button {
                    viewModel.nameModel = "Neptune.usdz"
                    playSound(sound: "Colossal", type: "mp3")
                } label: {
                    Text("Neptune")
                }
                Button {
                    viewModel.nameModel = "Plasma.usdz"
                    playSound(sound: "Momentum", type: "mp3")
                } label: {
                    Text("Plasma")
                }
                Button {
                    viewModel.nameModel = "moon.usdz"
                    playSound(sound: "Silent", type: "mp3")
                } label: {
                    Text("Moon")
                }
                
                
            }
            }
        
                
            
            
        }

    }
