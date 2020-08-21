//
//  CircleImage.swift
//  Landmarks.Learn
//
//  Created by Dan Johnson on 2/15/20.
//  Copyright © 2020 Dan Johnson. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
        .clipShape(Circle())
        .overlay(
            Circle().stroke(Color.gray,lineWidth: 4) )
        .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
