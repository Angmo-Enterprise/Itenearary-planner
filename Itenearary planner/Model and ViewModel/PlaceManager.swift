//
//  PlaceManager.swift
//  Itenearary planner
//
//  Created by James Toh on 20/11/23.
//

import Foundation
import SwiftUI

class PlaceManager: ObservableObject {
    @Published var Places: [Place] = [] {
        didSet {
            save()
        }
    }
        
    init() {
        load()
    }
    
    func getArchiveURL() -> URL {
        let plistName = "Places.plist"
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        return documentsDirectory.appendingPathComponent(plistName)
    }
    
    func save() {
        let archiveURL = getArchiveURL()
        let propertyListEncoder = PropertyListEncoder()
        let encodedPlaces = try? propertyListEncoder.encode(Places)
        try? encodedPlaces?.write(to: archiveURL, options: .noFileProtection)
    }
    
    func load() {
        let archiveURL = getArchiveURL()
        let propertyListDecoder = PropertyListDecoder()
                
        if let retrievedPlaceData = try? Data(contentsOf: archiveURL),
            let PlacesDecoded = try? propertyListDecoder.decode([Place].self, from: retrievedPlaceData) {
            Places = PlacesDecoded
        }
    }
}
