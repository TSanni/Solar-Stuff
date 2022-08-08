//
//  ContentView.swift
//  Solar Stuff
//
//  Created by Tomas Sanni on 8/4/22.
//

import SwiftUI

struct ContentView: View {
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    let solar: [SolarSystem] = Bundle.main.decode("solar.json")
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    
    
//    init() {
//        //Use this if NavigationBarTitle is with Large Font
//        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
//
//        //Use this if NavigationBarTitle is with displayMode = .inline
//        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
//    }
    
    
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(solar) { planetIndex in
                        NavigationLink {
                            PlanetDetailsViews(solar: planetIndex)
                        } label: {
                            VStack {
                                Image(planetIndex.image)
                                    .resizable()
                                    .scaledToFit()
//                                    .clipShape(Circle())
                                    .frame(height: 100)
                                
                                VStack {
                                    Text(planetIndex.name)
                                        .foregroundColor(.white)
                                        .font(.title)
                                    Text(planetIndex.type)
                                        .foregroundColor(.white)
                                        .italic()
                                }
                                .padding(.vertical)
                                .frame(maxWidth: .infinity)
                                .background(Color(hue: 0.761, saturation: 0.358, brightness: 0.302))
                                
                            }
                            .background(Color.black)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color(hue: 0.761, saturation: 0.358, brightness: 0.302))
                            )
                            .frame(width: screenWidth*0.45)
//                            .overlay(
//                                Rectangle()
//                                    .stroke(.green)
//                            )
                        }
                    }
                }
                .padding([.horizontal, .bottom])
            }
            .navigationTitle("Solar System")
            .background(Color.black)
            .preferredColorScheme(.dark)
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
        ContentView()
            .previewDevice("iPod touch (7th generation)")
        
    }
}
