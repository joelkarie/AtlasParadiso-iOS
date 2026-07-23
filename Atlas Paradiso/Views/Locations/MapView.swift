//
//  MapView.swift
//  Atlas Paradiso
//
//  Created by Joel Karie on 7/18/26.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var viewModel = LocationListViewModel()
    
    @State private var cameraPosition: MapCameraPosition = .region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(
                latitude: 39.5,
                longitude: -98.35
            ),
            span: MKCoordinateSpan(
                latitudeDelta: 55,
                longitudeDelta: 75
            )
        )
    )
    
    var body: some View {
        
//        Map(position: $cameraPosition) {
//            
//            ForEach(viewModel.locations) { location in
//                
//                Marker(
//                    location.name,
//                    coordinate: CLLocationCoordinate2D(
//                        latitude: location.latitude,
//                        longitude: location.longitude
//                    )
//                )
//            }
//        }
        ClusterMapView(locations: viewModel.locations)
            .task {
                await viewModel.loadLocations()
            }
        .task {
            await viewModel.loadLocations()
        }
    }
}

#Preview {
    MapView()
}
