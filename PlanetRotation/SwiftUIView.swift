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
                } label: {
                    Text("Earth")
                }
                Button {
                    viewModel.nameModel = "sea.usdz"
                } label: {
                    Text("Sea Planet")
                }
                Button {
                    viewModel.nameModel = "Titan.usdz"
                } label: {
                    Text("Titan")
                }
                Button {
                    viewModel.nameModel = "VenusNASA.usdz"
                } label: {
                    Text("Venus")
                }
                Button {
                    viewModel.nameModel = "Plasma.usdz"
                } label: {
                    Text("Plasma")
                }
                Button {
                    viewModel.nameModel = "Diamond.usdz"
                } label: {
                    Text("Diamond")
                }
                
                
            }
            }
        
                
            
            
        }

    }
