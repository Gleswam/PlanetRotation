//
//  SwiftUIView.swift
//  PlanetRotation
//
//  Created by Глеб Малов on 10/12/21.
//

import SwiftUI

struct SwiftUIView: View {
    
    @StateObject var planet3d = Planet3d()
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(planet3d.models[0...4]) { Model in
                    Button {
                                
                            } label: {
                                Text("Planet")
                            }
                    
                }
            }
                
            
            
        }

    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
