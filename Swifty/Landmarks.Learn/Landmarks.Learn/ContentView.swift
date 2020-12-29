//
//  ContentView.swift
//  Landmarks.Learn
//
//  Created by Dan Johnson on 2/15/20.
//  Copyright © 2020 Dan Johnson. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
           
            Text("Turtwig Rock")
                .font(.largeTitle)
                .foregroundColor(Color.green)
                .multilineTextAlignment(.center)
            HStack {
                Text("Squasha Tree")
                    .font(.subheadline)
                Spacer()
                Text("California Girls")
                    .font(.subheadline)
            }
        .padding()
        } // vstack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
