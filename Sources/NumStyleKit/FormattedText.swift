//
//  FormattedText.swift
//  NumStyleKit
//
//  Created by Nobin Nepolian on 01/09/2025.
//


import SwiftUI

public struct FormattedText: View {
    private let text: String
    private let color: Color
    private let font: Font
    
    public init(_ text: String, color: Color = .primary, font: Font = .body) {
        self.text = text
        self.color = color
        self.font = font
    }
    
    public var body: some View {
        Text(text)
            .foregroundColor(color)
            .font(font)
    }
}