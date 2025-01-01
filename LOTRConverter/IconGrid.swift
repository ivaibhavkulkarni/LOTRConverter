//
//  IconGrid.swift
//  LOTRConverter
//
//  Created by Vaibhav kulkarni on 24/12/24.
//

import SwiftUI

struct IconGrid: View {
    @Binding var currency: Currency
    
    var body: some View {
                
                // Currency icons
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]){
                    ForEach(Currency.allCases){ currency in
                        if self.currency == currency {
                            CurrencyIcon(CurrencyImage: currency.image, CurrencyName: currency.name)
                                .shadow(color: .black, radius: 10)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(lineWidth: 3)
                                        .opacity(0.5)
                                }
                        }else{
                            CurrencyIcon(CurrencyImage: currency.image, CurrencyName: currency.name)
                                .onTapGesture {
                                    self.currency = currency
                            }
                    }
                }
        }
                
    }
}

#Preview {
    @Previewable @State var currency: Currency = .silverPiece
    
    IconGrid(currency: $currency)
}

