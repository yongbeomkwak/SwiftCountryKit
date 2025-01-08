import XCTest
@testable import SwiftCountryKit

final class SwiftCountryKitTests: XCTestCase {
    func testExample() throws {
        let countryKit = CountryProvider()
        XCTAssertEqual(countryKit.allCallingCodeWithISO.count, 239)
        XCTAssertEqual(countryKit.allCallingCodes.count, 239)
        XCTAssertEqual(countryKit.find("US"), "+1")
    }
}
