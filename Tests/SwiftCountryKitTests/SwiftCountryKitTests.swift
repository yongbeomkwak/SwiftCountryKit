import XCTest
@testable import SwiftCountryKit

final class SwiftCountryKitTests: XCTestCase {
    func testExample() throws {
        let countryKit = CountryProvider(initCountryCode: .us)
        XCTAssertEqual(countryKit.all.count, 240)
        XCTAssertNotEqual(countryKit.all.count, 0)
    }
}
