import XCTest
@testable import StackView

final class StackViewTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(StackView().isAutoAxis, false)
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
