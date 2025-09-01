// The Swift Programming Language
// https://docs.swift.org/swift-book


import Foundation

public enum NumFormatter {
    
    /// Formats a number with decimal grouping (e.g. 1,234,567)
    public static func decimal(_ value: Double, minFraction: Int = 0, maxFraction: Int = 2) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = minFraction
        formatter.maximumFractionDigits = maxFraction
        return formatter.string(from: NSNumber(value: value)) ?? "\(value)"
    }
    
    /// Formats as currency (defaults to USD, but supports any locale)
    public static func currency(_ value: Double, code: String = "USD") -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencyCode = code
        return formatter.string(from: NSNumber(value: value)) ?? "\(value)"
    }
    
    /// Formats as percentage
    public static func percent(_ value: Double, fraction: Int = 1) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .percent
        formatter.minimumFractionDigits = fraction
        formatter.maximumFractionDigits = fraction
        return formatter.string(from: NSNumber(value: value)) ?? "\(value)"
    }
    
    /// New: Abbreviated number format like 1K, 1.5M, etc.
    public static func abbreviated(_ value: Double) -> String {
        let absValue = abs(value)
        let sign = value < 0 ? "-" : ""
        
        switch absValue {
        case 1_000_000_000...:
            return "\(sign)\(roundToOneDecimal(absValue / 1_000_000_000))B"
        case 1_000_000...:
            return "\(sign)\(roundToOneDecimal(absValue / 1_000_000))M"
        case 1_000...:
            return "\(sign)\(roundToOneDecimal(absValue / 1_000))K"
        default:
            return "\(value)"
        }
    }
    
    private static func roundToOneDecimal(_ value: Double) -> String {
        let rounded = (value * 10).rounded() / 10
        return rounded.truncatingRemainder(dividingBy: 1) == 0
        ? "\(Int(rounded))"
        : "\(rounded)"
    }
}
