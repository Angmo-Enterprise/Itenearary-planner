//
//  NewIteneararyView.swift
//  Itenearary planner
//
//  Created by James Toh on 17/11/23.
//

import SwiftUI

struct NewIteneararyView: View {
    
    @StateObject var iteneararyManager = IteneararyManager()
    
    @State private var location = ""
    @State private var details = ""
    @State private var budget = 0.0
    @State private var duration = Date()
    @State private var arrival = Date()

    private let numberFormatter: NumberFormatter
      
      init() {
        numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        numberFormatter.maximumFractionDigits = 2
      }

    var body: some View {
        VStack{
            Text("New Place")
                .font(.title2)
                .fontWeight(.semibold)
            List{
                HStack{
                    Text("Location")
                    TextField("Search", text: $location)
                }
                    DatePicker("Arrival", selection: $arrival)
                
                DatePicker("Duration", selection: $duration)
                TextField("$0.00", value: $budget, formatter: numberFormatter)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                TextField("Additional Details", text: $details)
                
                
                Button{
                    
                    iteneararyManager.Iteneararies.append(Itenearary(locations: location, details: details, budget: budget, transportTicket: <#T##String#>, locationOfStay: <#T##String#>))
                    
                }label: {
                    Text("Save")
                }
                
            }
            Spacer()
        }
        .padding()
    }
}
#Preview {
    NewIteneararyView()
}
