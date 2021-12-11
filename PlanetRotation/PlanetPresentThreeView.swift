//
//  PlanetPresentThreeView.swift
//  iPlanets
//
//  Created by Глеб Малов on 30/11/21.
//

import SwiftUI
import SceneKit

struct PlanetPresentThreeView: View {
    var model: Model
    
    var body: some View {
        
    
            VStack{
                SceneView(
                    scene: {
                        
                        let scene = SCNScene(named: model.modelName)!
                        
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
                
    }
}


