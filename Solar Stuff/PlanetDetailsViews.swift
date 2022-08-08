//
//  PlanetDetailsViews.swift
//  Solar Stuff
//
//  Created by Tomas Sanni on 8/5/22.
//

import SwiftUI
import SceneKit

struct PlanetDetailsViews: View {
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    let solar: SolarSystem
    
    var body: some View {
        ScrollView {
            VStack {
                
                Rectangle()
                    .fill(Color.clear)
                    .frame(height: screenHeight*0.1)

                SceneView(scene: {
                    guard let scene = SCNScene(named: "\(solar.image).usdz") else {
                        fatalError("Failed to load model")
                    }
                    scene.background.contents = UIColor.black /// here!
                    return scene
                }(), options: [.autoenablesDefaultLighting, .allowsCameraControl ]
                )
                .frame(maxWidth: .infinity)
                .frame(height: screenHeight*0.4)
                
                
                VStack(alignment: .leading) {
                    Text("Planet Summary")
                        .font(.largeTitle.bold())
                        .padding(.bottom)
                    
                    Text(solar.overview)
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(Color.gray.opacity(0.9))
                        .padding(.vertical)
                    
                    Text("Potential for Life")
                        .font(.title)
                        .padding(.bottom)
                    
                    Text(solar.lifePotential)
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(Color.gray.opacity(0.9))
                        .padding(.vertical)
                    
                    Text("Size and Distance")
                        .font(.title)
                        .padding(.bottom)
                    
                    Text(solar.sizeAndDistance)   
                }
                .padding()
            }
        }
        .navigationTitle(solar.name)
        .navigationBarTitleDisplayMode(.inline)
        .background(K.planetColors[solar.name])
        .edgesIgnoringSafeArea(.all)
    }
}

struct PlanetDetailsViews_Previews: PreviewProvider {
    static var previews: some View {
        
        PlanetDetailsViews(solar: SolarSystem.test)
            .preferredColorScheme(.dark)
        
        PlanetDetailsViews(solar: SolarSystem.test)
        
    }
}
