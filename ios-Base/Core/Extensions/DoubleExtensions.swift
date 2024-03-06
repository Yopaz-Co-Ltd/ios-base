import Foundation

public extension Double {
    func round(digit: Int) -> Double {
        let multipler = pow(10, Double(digit))

        return (self * multipler).rounded() / multipler
    }

    func percentString(roundedRule: FloatingPointRoundingRule = .toNearestOrEven) -> String {
        return "\(Int((self*100).rounded(roundedRule)))%"
    }
}
