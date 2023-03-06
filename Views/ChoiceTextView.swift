//
//  ChoiceTextView.swift
//  Code History
//
//  Created by Elvis Mendez on 12/4/22.
//

import Foundation
import SwiftUI
 
struct ChoiceTextView: View {
    let choiceText: String
    
 
    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(GameColor.accent, width: 4)
    }
}

