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
            
            //            VStack(alignment: .leading) {
            //                
            //                Text(location.name)
            //                    .font(.headline)
            //                
            //                Text("\(location.stateProvince), \(location.country)")
            //                    .font(.subheadline)
            //                    .foregroundStyle(.secondary)
            //            }
            //        }
            NavigationLink {
                
                LocationDetailView(location: location)
                
            } label: {
                
                VStack(alignment: .leading) {
                    Text(location.name)
                        .font(.headline)
                    
                    Text("\(location.stateProvince), \(location.country)")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
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
