import Foundation
import UIKit
// swiftlint:disable all
public func CGPointDistanceSquared(from: CGPoint, to: CGPoint) -> CGFloat {
    return (from.x - to.x) * (from.x - to.x) + (from.y - to.y) * (from.y - to.y)
}

public func CGPointDistance(from: CGPoint, to: CGPoint) -> CGFloat {
    return sqrt(CGPointDistanceSquared(from: from, to: to))
}

public extension CGPoint {
    static func middle(p1: CGPoint, p2: CGPoint) -> CGPoint {
        return CGPoint(x: (p1.x + p2.x) * 0.5, y: (p1.y + p2.y) * 0.5)
    }
    
    func distance(to other: CGPoint) -> CGFloat {
        let p = pow(x - other.x, 2) + pow(y - other.y, 2)
        return sqrt(p)
    }
    
    func angel(to other: CGPoint = .zero) -> CGFloat {
        let point = self - other
        if y == 0 {
            return x >= 0 ? 0 : CGFloat.pi
        }
        return -CGFloat(atan2f(Float(point.y), Float(point.x)))
    }
        
    func offsetedBy(x: CGFloat = 0, y: CGFloat = 0) -> CGPoint {
        var point = self
        point.x += x
        point.y += y
        return point
    }
    
    func rotatedBy(_ angle: CGFloat, anchor: CGPoint) -> CGPoint {
        let point = self - anchor
        let a = Double(-angle)
        let x = Double(point.x)
        let y = Double(point.y)
        let x_ = x * cos(a) - y * sin(a)
        let y_ = x * sin(a) + y * cos(a)
        return CGPoint(x: CGFloat(x_), y: CGFloat(y_)) + anchor
    }
}

public func +(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
    return CGPoint(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
}

public func +=(lhs: inout CGPoint, rhs: CGPoint) {
    lhs = lhs + rhs
}

public func -(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
    return CGPoint(x: lhs.x - rhs.x, y: lhs.y - rhs.y)
}

public func *(lhs: CGPoint, rhs: CGFloat) -> CGPoint {
    return CGPoint(x: lhs.x * rhs, y: lhs.y * rhs)
}

public func /(lhs: CGPoint, rhs: CGFloat) -> CGPoint {
    return CGPoint(x: lhs.x / rhs, y: lhs.y / rhs)
}

public func +(lhs: CGSize, rhs: CGSize) -> CGSize {
    return CGSize(width: lhs.width + rhs.width, height: lhs.height + rhs.height)
}

public func *(lhs: CGSize, rhs: CGFloat) -> CGSize {
    return CGSize(width: lhs.width * rhs, height: lhs.height * rhs)
}

public func /(lhs: CGSize, rhs: CGFloat) -> CGSize {
    return CGSize(width: lhs.width / rhs, height: lhs.height / rhs)
}

public func +(lhs: CGPoint, rhs: CGSize) -> CGPoint {
    return CGPoint(x: lhs.x + rhs.width, y: lhs.y + rhs.height)
}

public func -(lhs: CGPoint, rhs: CGSize) -> CGPoint {
    return CGPoint(x: lhs.x - rhs.width, y: lhs.y - rhs.height)
}

public func *(lhs: CGPoint, rhs: CGSize) -> CGPoint {
    return CGPoint(x: lhs.x * rhs.width, y: lhs.y * rhs.height)
}

public func /(lhs: CGPoint, rhs: CGSize) -> CGPoint {
    return CGPoint(x: lhs.x / rhs.width, y: lhs.y / rhs.height)
}
