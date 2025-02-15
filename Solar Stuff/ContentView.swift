//
//  ContentView.swift
//  Solar Stuff
//
//  Created by Tomas Sanni on 8/4/22.
//

import SwiftUI

struct ContentView: View {
    let screenWidth = UIScreen.main.bounds.width
    
    let solarSystemObjects: [SolarSystemObject] = Bundle.main.decode("solar.json")
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    

    init() {
        //Use this if NavigationBarTitle is with Large Font
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]

        //Use this if NavigationBarTitle is with displayMode = .inline
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().barTintColor = .clear
    }

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(solarSystemObjects) { object in
                        NavigationLink {
                            ObjectDetailsViews(object: object)
                        } label: {
                            SolarSystemObjectCard(solarSystemObject: object)
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
        .tint(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SolarSystemObjectCard: View {
    let solarSystemObject: SolarSystemObject
    let screenWidth = UIScreen.main.bounds.width

    var body: some View {
        VStack {
            Image(solarSystemObject.image)
                .resizable()
                .scaledToFit()
                .frame(height: 100)
            
            VStack {
                Text(solarSystemObject.name)
                    .foregroundColor(.white)
                    .font(.title)
                Text(solarSystemObject.type)
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
    }
}
