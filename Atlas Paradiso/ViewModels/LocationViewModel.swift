//
//  LocationListViewModel.swift
//  Atlas Paradiso
//
//  Created by Joel Karie on 7/17/26.
//

import Foundation
import Observation

@Observable
final class LocationListViewModel {
    
    var locations: [Location] = []
    
    var isLoading: Bool = false
    
    var errorMessage: String?
    
    func loadLocations() async {
        
        isLoading = true
        errorMessage = nil
        
        do {
            locations = try await APIClient.shared.fetchLocations()
            
            print("Loaded \(locations.count) locations")
        } catch {
            print(error)
            errorMessage = error.localizedDescription
        }
        
        isLoading = false
    }
}
