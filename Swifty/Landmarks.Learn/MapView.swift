//
//  MapView.swift
//  Landmarks.Learn
//
//  Created by Dan Johnson on 2/16/20.
//  Copyright © 2020 Dan Johnson. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2d(latitude:34.011286, longitude:-116.166868)
        let span = MKCoordinateSpan(latitudeDelta:2.0, longitudeDelta: )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
