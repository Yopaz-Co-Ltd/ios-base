import Foundation

private struct UserDefaultsConst {
    static let launchCountKey = "launchCount"
    static let paintingKey = "paintingKey"
}

public extension UserDefaults {
    func increaseLaunchCount() {
        let count = self.integer(forKey: UserDefaultsConst.launchCountKey)
        self.setValue(count + 1, forKey: UserDefaultsConst.launchCountKey)
    }

    func launchCount() -> Int {
        return self.integer(forKey: UserDefaultsConst.launchCountKey)
    }

    func isFirstTimePainting() -> Bool {
        return !self.bool(forKey: UserDefaultsConst.paintingKey)
    }

    func setDidPaint() {
        self.setValue(true, forKey: UserDefaultsConst.paintingKey)
    }
}
