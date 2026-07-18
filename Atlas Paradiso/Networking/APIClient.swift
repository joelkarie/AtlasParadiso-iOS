//
//  APIClient.swift
//  Atlas Paradiso
//
//  Created by Joel Karie on 7/17/26.
//

import Foundation

final class APIClient {
    
    static let shared = APIClient()
    
    private init() {}
    
    func fetchLocations() async throws -> [Location] {
        let url = API.baseURL.appendingPathComponent("locations")
        
        let (data,_) = try await URLSession.shared.data(from: url) // The tuple is the body and the response (ie. 404, 500)
        let decoder = JSONDecoder()
        return try decoder.decode([Location].self, from: data)
    }
}
