//
//  ContentView.swift
//  WeSplit
//
//  Created by Yashwanth Raj Varadharajan on 6/24/24.
//

import SwiftUI

struct ContentView: View {
//    @State private var buttonCount: Int = 0
//    @State private var nameOfStudent = ""
    let dishNames = ["Dosa","idli","pongal","sambar"]
    @State private var defaultselevtes = "select"
    
    
    var body: some View {
        // Task 1 -> Navigataion Stack
//        NavigationStack {
//            Form {
//                Section{
//                    Text("Hello World!!")
//                    Text("Hello World!!")
//                }
//                
//                Text("Hello World!!")
//                Text("Hello World!!")
//                Text("Hello World!!")
//                
//                
//            }
//            .navigationTitle("WeSplit")
//            .navigationBarTitleDisplayMode(.inline)
//        }
        
        // Task 2 -> @State Property
//        Button("Tap Action: \(buttonCount)"){
//            buttonCount += 1
//        }
        
        
        // Task 3 -> Read and write
//        Form {
//            TextField("Enter Your Name: ", text: $nameOfStudent)   // We use the $ sign here to denote two way binding. i.e this will display as well as write the contents inside the variable
//            Text("Your Name is: \(nameOfStudent)")
//        }
        
        // Task 4 -> Picker
        NavigationStack{
            Form{
                Picker("Please choose your dish to eat:", selection: $defaultselevtes){
                    ForEach(dishNames,id: \.self) { dishes in
                        Text(dishes)
                    }
                }
            }
        }.navigationTitle("Pick your Dish")
    }
}

#Preview {
    ContentView()
}
