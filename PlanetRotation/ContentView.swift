//
//  ContentView.swift
//  PlanetRotation
//
//  Created by Глеб Малов on 07/12/21.
//

import SwiftUI
import SceneKit

struct ContentView: View {
    
    @StateObject var modelsNum1 = ModelsNumber(modelNum: 0)
    
    var body: some View {
        TabView{
            
            NavigationView {
                PlanetThreeView().environmentObject(modelsNum1)
                    .navigationTitle(Text("Planets"))
                    .navigationBarTitleDisplayMode(.inline)
            }
            .tabItem() {
                Image(systemName: "rectangle.grid.1x2.fill")
                    .foregroundColor(.green)
                Text("Ubrat'")
                    .foregroundColor(.green)
                
            }
            
            NavigationView {
                SwiftUIView()
                    .navigationTitle(Text("Kakashka"))
                    .navigationBarTitleDisplayMode(.inline)
            }
            .tabItem {
                Image(systemName: "house.fill")
                    .foregroundColor(.green)
                Text("PlayPage")
                    .foregroundColor(.green)
                
                
            }
         
            
        }
        .onAppear() {
            UITabBar.appearance().backgroundColor = UIColor.black
            
        }
        .accentColor(.green)
    }
}


