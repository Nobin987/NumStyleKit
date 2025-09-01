//
//  ExampleUsage.swift
//  NumStyleKit
//
//  Created by Nobin Nepolian on 01/09/2025.
//

import SwiftUI
import NumStyleKit

struct ContentView: View {
    var body: some View {
        VStack(spacing: 16) {
            
            FormattedText(NumFormatter.decimal(1234567.89123))
            
            FormattedText(NumFormatter.currency(9999.99, code: "EUR"), color: .green, font: .title)
            
            FormattedText(NumFormatter.percent(0.856), color: .red, font: .headline)
            
            FormattedText(NumFormatter.abbreviated(1234))
        }
        .padding()
    }
}
