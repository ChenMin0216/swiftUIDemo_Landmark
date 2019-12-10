//
//  MapView.swift
//  SwiftUIDemo
//
//  Created by bengbengbeng on 2019/12/6.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    var coordinate: CLLocationCoordinate2D
    
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        return MKMapView(frame: .zero)
    }
        
    func updateUIView(_ view: MKMapView, context: UIViewRepresentableContext<MapView>) {
        let span = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

#if DEBUG
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: landmarkData[0].locationCoordinate)
    }
}
#endif