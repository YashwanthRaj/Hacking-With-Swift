//
//  ContentView.swift
//  BetterRest
//
//  Created by Yashwanth Raj Varadharajan on 7/9/24.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepCount = 8.0
    
    // Swift UI has a separate datatype for date called Date
    @State private var wakeUp = Date.now
    
    var body: some View {
        VStack {
            Stepper("\(sleepCount.formatted()) hours:", value: $sleepCount, in: 4...12, step: 0.25)
            
            DatePicker("Please enter a date:", selection: $wakeUp, displayedComponents: .hourAndMinute).labelsHidden()
            
            DatePicker("Please enter a date:", selection: $wakeUp, in: Date.now... ).labelsHidden()
            
        }.padding()
        
    }
    
    func exampleDates() {
        let tommorrow = Date.now.addingTimeInterval(86400)   // 86400 is the number of hours on a day
        let range = Date.now...tommorrow
    }
}

#Preview {
    ContentView()
}
