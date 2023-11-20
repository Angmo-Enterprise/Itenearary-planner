//
//  IteneararyManager.swift
//  Itenearary planner
//
//  Created by James Toh on 20/11/23.
//

import Foundation
import SwiftUI

class IteneararyManager: ObservableObject {
    @Published var Iteneararies: [Itenearary] = [] {
        didSet {
            save()
        }
    }
        
    init() {
        load()
    }
    
    func getArchiveURL() -> URL {
        let plistName = "Iteneararies.plist"
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        return documentsDirectory.appendingPathComponent(plistName)
    }
    
    func save() {
        let archiveURL = getArchiveURL()
        let propertyListEncoder = PropertyListEncoder()
        let encodedIteneararys = try? propertyListEncoder.encode(Iteneararies)
        try? encodedIteneararys?.write(to: archiveURL, options: .noFileProtection)
    }
    
    func load() {
        let archiveURL = getArchiveURL()
        let propertyListDecoder = PropertyListDecoder()
                
        if let retrievedIteneararyData = try? Data(contentsOf: archiveURL),
            let ItenearariesDecoded = try? propertyListDecoder.decode([Itenearary].self, from: retrievedIteneararyData) {
            Iteneararies = ItenearariesDecoded
        }
    }
}
