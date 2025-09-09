//
//  ContentView.swift
//  SwiftCalculator
//
//  Created by Jacob Colon on 9/9/25.
//

import SwiftUI

struct ContentView: View {
    @State var displayText: String = "100"
    
    
    
    var body: some View {
        ZStack {
            ZStack {
                RadialGradient(
                    gradient: Gradient(colors: [.white, .blue.opacity(0.8)]),
                    center: .leading,
                    startRadius: 10,
                    endRadius: 400
                )
                RadialGradient(
                    gradient: Gradient(colors: [.blue.opacity(0.2),.white.opacity(0.8)]),
                    center: .trailing,
                    startRadius: 10,
                    endRadius: 500
                )
            }.ignoresSafeArea()
            
            GeometryReader { proxy in
                VStack {
                    VStack {
                        Text(displayText)
                            .font(.system(size: 50, weight: .bold))
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: proxy.size.height * 0.25
                        )
                }
                .ignoresSafeArea()
                .padding()
            }
            
            
        }
    }
}

#Preview {
    ContentView()
}
