//
//  PlanetThreeView.swift
//  iPlanets
//
//  Created by Глеб Малов on 30/11/21.
//

import SwiftUI
import SceneKit


struct PlanetThreeView: View {
    
    @StateObject var planet3d = Planet3d()
    @EnvironmentObject var modelNum1:ModelsNumber
    @EnvironmentObject var modelNum: ModelsNumber

    var body: some View {
        
        
        ZStack{
            
            ScrollView {
                ForEach(planet3d.models[0...4]) { Model in
                    NavigationLink(destination: PlanetPresentThreeView(model: Model)) {
                
                        ZStack{
                            
                           
                            HStack{
                                
//                                VStack(spacing: -7.0){
                                    
                                    Text(Model.name)
//                                        .foregroundColor(Color.green)
//
//                                    
//                                }
//                                .padding(.leading, 30.0)
                                
//                                Spacer()
//
//                                Image(Model.imageTwoName)
//                                    .resizable()
//                                    .scaledToFit()
//                                    .padding(.all)
//                                    .frame(width: 100, height: 100)
                            }
//                            .padding(.horizontal, 30.0)
                        }
                        .frame(width:UIScreen.main.bounds.width * 0.9, height: 70.0)
//                        .cornerRadius(/*@START_MENU_TOKEN@*/14.0/*@END_MENU_TOKEN@*/)
                        .overlay(
                            RoundedRectangle(cornerRadius: 14)
                                .stroke(Color.green, lineWidth: 1)
                        )
                        .padding(.vertical, 5.0)
                        
                        
                        
                    }
                }
                
            
        }
        
        
    }
}

    }
