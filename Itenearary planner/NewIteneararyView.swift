//
//  NewIteneararyView.swift
//  Itenearary planner
//
//  Created by James Toh on 17/11/23.
//

import SwiftUI

struct NewIteneararyView: View {
    
    @State private var location = ""
    @State private var details = ""
    
    @State private var numHours = 0
    @State private var numMins = 0
    @State private var arrHour = 0
    @State private var arrMin = 0
    

    var body: some View {
        VStack{
            Text("New Place")
                .font(.title2)
                .fontWeight(.semibold)
            VStack(alignment: .leading){
                HStack{
                    Text("Location")
                    TextField("Search", text: $location)
                        .textFieldStyle(.roundedBorder)
                }
                HStack{
                    Text("Duration spent")
                    HStack{
                        Spacer()
                        
                        Picker("", selection: $numHours){
                            ForEach(0..<4, id: \.self) { i in
                                Text("\(i) hours").tag(i)
                            }
                        }
                        .pickerStyle(WheelPickerStyle())
                        .frame(width: 110)
                        .clipped()
                        
                        
                        Picker("", selection: $numMins){
                            ForEach(0..<60, id: \.self) { i in
                                Text("\(i) min").tag(i)
                            }
                        }
                        .pickerStyle(WheelPickerStyle())
                        .frame(width: 110)
                        .clipped()
                        
                        Spacer()
                    }
                    
                }
                .frame(height: 140)
                HStack{
                    Spacer()
                    Text("Time of arrival")
                    HStack{
                        Picker("", selection: $arrHour){
                            ForEach(1..<12, id: \.self) { i in
                                Text("\(i) hours").tag(i)
                            }
                        }
                        .pickerStyle(WheelPickerStyle())
                        .frame(width: 110)
                        .clipped()
                        
                        
                        Picker("", selection: $arrMin){
                            ForEach(1..<59, id: \.self) { i in
                                Text("\(i) min").tag(i)
                            }
                        }
                        .pickerStyle(WheelPickerStyle())
                        .frame(width: 110)
                        .clipped()
                        

                    }
                    Spacer()
                }
                .frame(height: 140)

                
                TextField("Additional Details", text: $details)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
            }
            Spacer()
        }
        .padding()
    }
}
#Preview {
    NewIteneararyView()
}
