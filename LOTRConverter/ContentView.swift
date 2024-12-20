//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Vaibhav kulkarni on 18/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // background image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                // prancing pony image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                // currency exchange text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    
                
                // conversion section
                HStack {
                    // left conversion section
                    VStack {
                        // Currency
                        HStack {
                            // image
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                                
                            // currency text
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        
                        // text field
                        Text("Text field")
                    }
                    
                    // equal symbol
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .symbolEffect(.pulse)
                        .foregroundStyle(.white)
                    // right conversion section
                    
                    VStack {
                        // Currency
                        HStack {
                            // currency text
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                            // currency image
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        //text field
                        Text("text field")
                    }
                }
                
                Spacer()
                
                //info button
                Image(systemName: "info.circle.fill")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    ContentView()
}
