import Foundation

// swiftlint:disable all
public extension Dictionary {
    func jsonString() -> String {
        guard let jsonData = try? JSONSerialization.data(withJSONObject: self, options: [.prettyPrinted]) else {
            return ""
        }

        return String(data: jsonData, encoding: .utf8) ?? ""
    }
}
