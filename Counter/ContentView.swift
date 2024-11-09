//
//  ContentView.swift
//  Counter
//
//  Created by Antony Holshouser on 11/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var num = 0
    @State var increasing = true
    let upperLimit = 50
    let lowerLimit = 0
    
    var body: some View {
        VStack {
            Text(String(num))
            Button {
                let random = Int.random(in: 1...10)
                
                if increasing {
                    increase(random)
                    if upperLimit < num {
                        increasing = false
                    }
                } else {
                    decrease(random)
                    if num < lowerLimit {
                        increasing = true
                    }
                }
                
            } label: {
                Text("Click Me!")
            }
        }
    }
    
    func increase(_ increment:Int) {
        num += increment
    }
    
    func decrease(_ decrement:Int) {
        num -= decrement
    }
}

#Preview {
    ContentView()
}
