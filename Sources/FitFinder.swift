import Foundation

public class FitFinder {
    public static func recommendSize(height: Double, weight: Double) -> String {
        let bmi = SizeCalculator.calculateBMI(height: height, weight: weight)
        return SizeCalculator.sizeFromBMI(bmi)
    }
}
