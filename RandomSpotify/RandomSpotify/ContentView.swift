//
//  ContentView.swift
//  RandomSpotify
//
//  Created by Dan Johnson on 7/25/20.
//  Copyright © 2020 Dan Johnson. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            Text("First View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("first")
                        Text("Spotify POC")
                        Button ( action: {
                            // what it does
                        })
                    }
                    {
                        // how it looks
                        Text("Spotify")
                        .font(.title)
                        .padding()

                    }
                }
                .tag(0)
            Text("Second View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("second")
                        Text("Second")
                    }
                }
                .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
