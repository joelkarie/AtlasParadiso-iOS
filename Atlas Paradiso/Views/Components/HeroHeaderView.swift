//
//  HeroHeaderView.swift
//  Atlas Paradiso
//
//  Created by Joel Karie on 7/19/26.
//

import SwiftUI

struct HeroHeaderView: View {
    
    let location: Location
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            
            AsyncImage(url: location.imageURL) { phase in
                
                switch phase {
                    
                case .success(let image):
                    image
                        .resizable()
//                        .scaledToFit()
                case .failure(_):
                    
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .padding(60)
                        .foregroundColor(.white.opacity(0.7))
                default:
                    ProgressView()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                }
            }
            
            // Dark gradient for readability
            LinearGradient(
                colors: [
                    .clear,
                    .black.opacity(0.75)
                ],
                startPoint: .center,
                endPoint: .bottom
            )
            
            VStack(alignment: .leading, spacing: 6) {

                Text(location.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)

                Text("\(location.stateProvince), \(location.country)")
                    .font(.title3)
                    .foregroundStyle(.white.opacity(0.9))
                
            }
            .padding()
            
        }
        .frame(height: 380)
        .clipped()
        .ignoresSafeArea(edges: .top)
    }
}

#Preview {
    HeroHeaderView(
        location: Location(
            id: 278,
            name: "Point Pelee National Park",
            censusName: "Point Pelee National Park",
            alternativeName: nil,
            locationTypeId: 2,
            latitude: 41.95,
            longitude: -82.52,
            stateProvince: "Ontario",
            country: "Canada",
            joelCouldLive: false,
            michaelCouldLive: false,
            joelStarRating: 5,
            michaelStarRating: nil,
            joelHighlights: "None yet",
            michaelHighlights: "Not yet"
        )
        
        
        
        
        
        
        
    )
}
