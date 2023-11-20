//
//  Location.swift
//  Itenearary planner
//
//  Created by James Toh on 20/11/23.
//

import Foundation

struct Location: Identifiable, Codable {
    
    var id = UUID()
    
    var name: String
    var address: String
    var postalCode: Int? 
    var timeOfArrival = Date()
    var duration = Date()
}
