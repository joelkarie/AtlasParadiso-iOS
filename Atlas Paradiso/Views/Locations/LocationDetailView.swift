//
//  LocationDetailView.swift
//  Atlas Paradiso
//
//  Created by Joel Karie on 7/18/26.
//

import SwiftUI

struct LocationDetailView: View {
    
    let location: Location
    
    var body: some View {

            
            ScrollView {
                
                VStack(spacing: 0) {
                    HeroHeaderView(location: location)
                        .frame(height: 350)
                    

                }
                Section("Ratings") {
    
                    HStack {
                        Text("Joel")
                        Spacer()
                        Text(stars(for: location.joelStarRating))
                    }
    
                    HStack {
                        Text("Michael")
                        Spacer()
                        Text(stars(for: location.michaelStarRating))
                    }
                }
                .padding(8)
                
    
                Section("Highlights") {
    
                    HStack {
                        Text("Joel")
                        Spacer()
                        Text(location.joelHighlights ?? "-")
                    }
    
                    HStack {
                        Text("Michael")
                        Spacer()
                        Text(location.michaelHighlights ?? "-")
                    }
                }
                .padding(8)
    
                Section("Coordinates") {
    
                    LabeledContent("Latitude") {
                        Text(String(location.latitude))
                    }
    
                    LabeledContent("Longitude") {
                        Text(String(location.longitude))
                    }
                }
                .padding(8)

            }
            .toolbarBackground(.hidden, for: .navigationBar)
            .ignoresSafeArea(edges: .top)
//
//            AsyncImage( url: location.imageURL) { phase in
//                
//                switch phase {
//                    
//                case .success(let image):
//                    
//                    image
//                        .resizable()
//                        .scaledToFit()
//                        
//                    
//                case .failure(_):
//                    
//                    Image(systemName: "photo")
//                        .resizable()
//                        .scaledToFit()
//                        .padding(40)
//                        .foregroundStyle(.secondary)
//                    
//                default:
//                    
//                    ProgressView()
//                            
//                }
//            }
//            .frame(height: 240)
//            .frame(maxWidth: .infinity)
//            .clipped()
//            .listRowInsets(EdgeInsets())
//            
//            
//            Section {
//                
//                Text(location.name)
//                    .font(.largeTitle)
//                    .fontWeight(.bold)
//                
//                Text("\(location.stateProvince), \(location.country)")
//                    .font(.title3)
//                    .foregroundStyle(.secondary)
//            }
//            
//            Section("Ratings") {
//                
//                HStack {
//                    Text("Joel")
//                    Spacer()
//                    Text(stars(for: location.joelStarRating))
//                }
//                
//                HStack {
//                    Text("Michael")
//                    Spacer()
//                    Text(stars(for: location.michaelStarRating))
//                }
//            }
//            
//            Section("Highlights") {
//                
//                HStack {
//                    Text("Joel")
//                    Spacer()
//                    Text(location.joelHighlights ?? "-")
//                }
//                
//                HStack {
//                    Text("Michael")
//                    Spacer()
//                    Text(location.michaelHighlights ?? "-")
//                }
//            }
//                
//            Section("Coordinates") {
//                    
//                LabeledContent("Latitude") {
//                    Text(String(location.latitude))
//                }
//                
//                LabeledContent("Longitude") {
//                    Text(String(location.longitude))
//                }
//            }
        }
//        .navigationTitle(location.name)
//        .navigationBarTitleDisplayMode(.inline)
    }
        
    private func stars(for rating: Int?) -> String {
        
        guard let rating else {
            return "-"
        }
        
        return String(repeating: "*", count: rating)
    }


#Preview {
    NavigationStack {
        LocationDetailView(
            location: Location(
                id: 278,
                name: "Acadia National Park",
                censusName: "Acadia National Park",
                alternativeName: nil,
                locationTypeId: 2,
                latitude: 44.356312,
                longitude: -68.215479,
                stateProvince: "Maine",
                country: "USA",
                joelCouldLive: false,
                michaelCouldLive: nil,
                joelStarRating: 4,
                michaelStarRating: nil,
                joelHighlights: "-",
                michaelHighlights: "-"
            )
        )
    }
}
