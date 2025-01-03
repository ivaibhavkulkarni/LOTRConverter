//
//  CurrenctTip.swift
//  LOTRConverter
//
//  Created by Vaibhav kulkarni on 01/01/25.
//

import TipKit


struct CurrencyTip: Tip {
    var title = Text("Change Currency")
    
    var message: Text? = Text("You can tap the left or right currency to bring up the select Currency screen.")
    
    var image: Image? = Image(systemName: "hand.tap.fill")
}