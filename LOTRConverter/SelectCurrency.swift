//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Vaibhav kulkarni on 24/12/24.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            // Parchment bg Iamge
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
    
            VStack {
               // Text
                Text("Select the Currency you are starting with:")
                    .fontWeight(.bold)
                
                // Currency icons
                CurrencyIcon(CurrencyImage: .copperpenny, CurrencyName: "Copper Penny")
                
                
                
                
                // Text
                Text("Select the Currency you would like to convert to:")
                    .fontWeight(.bold)
                    
                // Currency icons
                
                // Done button
                Button("Done"){
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
                
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency()
}

