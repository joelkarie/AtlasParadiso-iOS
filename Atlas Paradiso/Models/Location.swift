//
//  Location.swift
//  Atlas Paradiso
//
//  Created by Joel Karie on 7/17/26.
//

import Foundation

struct Location: Codable, Identifiable {
    let id: Int
    let name: String
    let censusName: String
    let alternativeName: String?
    let locationTypeId: Int
    let latitude: Double
    let longitude: Double
    let stateProvince: String
    let country: String
    let joelCouldLive: Bool?
    let michaelCouldLive: Bool?
    let joelStarRating: Int?
    let michaelStarRating: Int?
    
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case censusName = "census_name"
        case alternativeName = "alternative_name"
        case locationTypeId = "location_type_id"
        case latitude
        case longitude
        case stateProvince = "state_province"
        case country
        case joelCouldLive = "joel_could_live"
        case michaelCouldLive = "michael_could_live"
        case joelStarRating = "joel_star_rating"
        case michaelStarRating = "michael_star_rating"
    }
}
