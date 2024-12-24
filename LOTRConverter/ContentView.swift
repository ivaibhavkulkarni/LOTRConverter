//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Vaibhav kulkarni on 18/12/24.
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false
    @State var leftAmount = ""
    @State var rightAmount = ""
    
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
                        
                        .padding(.bottom, -5)
                        // text field
                        TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
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
                        
                        .padding(.bottom, -5)
                        //text field
                        TextField("Amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                    }
                }
                
                .padding()
                .padding(.bottom)
                .background(.black.opacity(0.5))
                .clipShape(.capsule)
                Spacer()
                
                //info button
                HStack {
                    Spacer()
                    
                    Button {
                        showExchangeInfo.toggle()
                        print("ShowExachangeInfo Value: \(showExchangeInfo)")
                    } label:{
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing)
                    .sheet(isPresented: $showExchangeInfo){
                        ExchangeInfo()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
