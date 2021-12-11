//
//  Planet3d.swift
//  iPlanets
//
//  Created by Глеб Малов on 30/11/21.
//

import Foundation
import SwiftUI
import SceneKit

class Planet3d: ObservableObject {
    
    @Published var models: [Model] = []
    //@State var n: Int = 0
    var model1 = Model(name: "Zenn-La", modelName: "Earth.usdz")
    var model2 = Model(name: "Hoth", modelName: "Neptune.usdz")
    var model3 = Model(name: "Mondas", modelName: "Diamond.usdz")
    var model4 = Model(name: "Eternium", modelName: "Plasma.usdz")
    var model5 = Model(name: "Skaro", modelName: "sea.usdz")
    
    init() { self.models = [model1,model2,model3,model4,model5] }
    
}

class ModelsNumber: ObservableObject {
    internal init(modelNum: Int) {
        self.modelNum = modelNum
    }
    @Published var modelNum = 0
}
