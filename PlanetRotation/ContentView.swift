//
//  ContentView.swift
//  PlanetRotation
//
//  Created by Глеб Малов on 07/12/21.
//

import SwiftUI
import SceneKit


//class ModelChange: ObservableObject {
//   
//    @Published var nameModel = "Earth.usdz"
//    
//}

struct ContentView: View {
    
    @EnvironmentObject var viewModel: ViewModel

    @StateObject var planet3d = Planet3d()
    
//    @State var nameModel = "Earth.usdz"
    
    var body: some View {
        
        NavigationView {
        
        ZStack {
            
        
        VStack{
            SceneView(
                scene: {
                    
                    let scene = SCNScene(named: viewModel.nameModel)!
                    
                    let action = SCNAction.rotate(by: 360 * CGFloat(Double.pi / 180), around: SCNVector3(x:0, y:1, z:0), duration: 10)
                    let repeatAction = SCNAction.repeatForever(action)
                    
                    
                    let stars = SCNParticleSystem(named: "StarsParticles.scnp", inDirectory: nil)!
                    scene.rootNode.addParticleSystem(stars)
                    
                    scene.background.contents = UIColor.black
                    
                    scene.rootNode.runAction(repeatAction)
                    
                    return scene
                }(),
                options: [.autoenablesDefaultLighting,.allowsCameraControl]
                
            )
        }
            
           
            
                NavigationLink(destination: SwiftUIView()) {

                     Image(systemName: "gearshape.2.fill")
                         .resizable()
                         .scaledToFit()
                         .frame(width: 70, height: 70)
                         .position(x: 370, y: 690)
                         .foregroundColor(Color.white)
                 }
            }
        
             
            
            
    }
        
            
        }
    }



