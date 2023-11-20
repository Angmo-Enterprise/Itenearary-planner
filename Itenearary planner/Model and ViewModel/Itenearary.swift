//
//  Itenearary.swift
//  Itenearary planner
//
//  Created by James Toh on 20/11/23.
//

import Foundation

struct Place: Identifiable, Codable {
    
    var id = UUID()
    
    var name: String
    var address: String
    var postalCode: Int?
    var timeOfArrival = Date()
    var duration = Date()
}


struct Itenearary: Identifiable, Codable {
    
    var id =  UUID()
    
    var startDate = Date()
    var endDate = Date()
    var places: [Place]
    var details: String
    var budget: Double
    
}
