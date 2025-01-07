import XCTest
@testable import SwiftCountryKit

final class SwiftCountryKitTests: XCTestCase {
    func testExample() throws {
        let countryKit = try SwiftCountryKit()
        XCTAssertEqual(countryKit.all.count, 180)
        XCTAssertNotEqual(countryKit.all.count, 0)
    }
}
