//
//  LocationListView.swift
//  Atlas Paradiso
//
//  Created by Joel Karie on 7/17/26.
//

import SwiftUI

struct LocationListView: View {
    
    @State private var viewModel = LocationListViewModel()
    
    var body: some View {
        
        List(viewModel.locations) { location in
            
            NavigationLink {
                
                LocationDetailView(location: location)
                
            } label: {
                
                LocationRow(location: location)                

            }
        }
        .navigationTitle("Locations")
        
        .task {
            await viewModel.loadLocations()
        }
    }
}

    #Preview {
        NavigationStack{
            LocationListView()
        }
    }
