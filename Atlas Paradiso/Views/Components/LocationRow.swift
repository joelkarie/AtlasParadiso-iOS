//
//  LocationRow.swift
//  Atlas Paradiso
//
//  Created by Joel Karie on 7/18/26.
//

import SwiftUI

struct LocationRow: View {
    
    let location: Location
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4)  {
            
            Text(location.name)
                .font(.headline)
            
            Text("\(location.stateProvince), \(location.country)")
                .font(.subheadline)
                .foregroundColor(.secondary)
            
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    List {
        LocationRow(
            location: Location(
                id: 1,
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
