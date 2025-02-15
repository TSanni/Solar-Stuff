//
//  PlanetDetailsViews.swift
//  Solar Stuff
//
//  Created by Tomas Sanni on 8/5/22.
//

import SwiftUI
import SceneKit

struct ObjectDetailsViews: View {
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    let object: SolarSystemObject
    
    var body: some View {
        ScrollView {
            VStack {

                SceneView(scene: {
                    guard let scene = SCNScene(named: "\(object.image).usdz") else {
                        fatalError("Failed to load model")
                    }
                    scene.background.contents = K.planetColors[object.name]
                    
                    let rotation = SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: 1, z: 0, duration: 10))
                    scene.rootNode.runAction(rotation)
                    return scene
                }(), options: [.autoenablesDefaultLighting, .allowsCameraControl ]
                )
                .frame(maxWidth: .infinity)
                .frame(height: screenHeight*0.4)
                
                
                VStack(alignment: .leading) {
                    Text("Planet Summary")
                        .font(.largeTitle.bold())
                        .padding(.bottom)
                    
                    Text(object.overview)
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(Color.gray.opacity(0.9))
                        .padding(.vertical)
                    
                    Text("Potential for Life")
                        .font(.title)
                        .padding(.bottom)
                    
                    Text(object.lifePotential)
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(Color.gray.opacity(0.9))
                        .padding(.vertical)
                    
                    Text("Size and Distance")
                        .font(.title)
                        .padding(.bottom)
                    
                    Text(object.sizeAndDistance)   
                }
                .padding()
            }
        }
        .navigationTitle(object.name)
        .navigationBarTitleDisplayMode(.inline)
        .background(Color(uiColor: K.planetColors[object.name] ?? UIColor.gray))
    }
}

struct PlanetDetailsViews_Previews: PreviewProvider {
    static var previews: some View {
        
        ObjectDetailsViews(object: SolarSystemObject.test)

        
    }
}
