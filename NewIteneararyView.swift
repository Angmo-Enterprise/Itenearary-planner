//
//  NewIteneararyView.swift
//  Itenearary planner
//
//  Created by James Toh on 20/11/23.
//

import SwiftUI

struct NewIteneararyView: View {
    
    @State private var budget = 0.0
    
    var body: some View {
        List{
            HStack{
                Picker("Your estimated budget($)", selection: $budget){
                    ForEach(1...3, id: \.self){ i in
                        Text("\(i)000")
                    }
                }
            }
            Text("Places you want to visit")
        }
    }
}

#Preview {
    NewIteneararyView()
}
