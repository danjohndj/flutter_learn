//
//  CardView.swift
//  LearnSwiftUI
//
//  Created by Dan Johnson on 2/10/21.
//

import SwiftUI

struct CardView: View {
    
    var image: String
    var category: String
    var headings: String
    var author: String
    
    var body: some View {
        VStack {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fit)
        
            HStack {
            VStack(alignment: .leading) {
            Text(category)
                .font(.headline)
                .foregroundColor(.secondary)
            Text(headings)
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(.primary)
                .lineLimit(3)
            Text("Written by \(author)".uppercased())
                .font(.caption)
                .foregroundColor(.secondary)
            }
            Spacer()
    }
        .padding()
}
        .cornerRadius(10)
        .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.sRGB, red: 150/255,green: 150/225, blue: 150/255, opacity: 0.1),lineWidth: 1  )
        )
        .padding([.top,.horizontal])
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(image: "Swiftui-button",category: "SwiftUI",headings: "Drawing a Border...", author: "Ana NG")
    }
}
