import XCTest
@testable import FitFinderSDK

class SizeCalculatorTests: XCTestCase {

    func testCalculateBMI() {
        XCTAssertEqual(SizeCalculator.calculateBMI(height: 170, weight: 70), 24.22, accuracy: 0.01)
    }

    func testSizeRecommendation() {
        XCTAssertEqual(SizeCalculator.sizeFromBMI(17.0), "S")
        XCTAssertEqual(SizeCalculator.sizeFromBMI(20.0), "M")
        XCTAssertEqual(SizeCalculator.sizeFromBMI(27.0), "L")
        XCTAssertEqual(SizeCalculator.sizeFromBMI(35.0), "XL")
    }
}
