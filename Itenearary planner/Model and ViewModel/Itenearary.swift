//
//  Itenearary.swift
//  Itenearary planner
//
//  Created by James Toh on 20/11/23.
//

import Foundation

struct Itenearary: Identifiable, Codable {
    
    var id =  UUID()
    
    var startDate = Date()
    var endDate = Date()
    var locations: String
    var details: String
    var budget: Double
    
}
