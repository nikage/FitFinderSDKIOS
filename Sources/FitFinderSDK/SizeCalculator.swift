import Foundation

class SizeCalculator {
    static func calculateBMI(height: Double, weight: Double) -> Double {
        let heightInMeters = height / 100.0
        return weight / (heightInMeters * heightInMeters)
    }

    static func sizeFromBMI(_ bmi: Double) -> String {
        switch bmi {
        case ..<18.5:
            return "S"
        case 18.5..<25.0:
            return "M"
        case 25.0..<30.0:
            return "L"
        default:
            return "XL"
        }
    }
}
