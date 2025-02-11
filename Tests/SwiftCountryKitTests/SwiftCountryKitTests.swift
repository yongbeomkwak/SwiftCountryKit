import XCTest
@testable import SwiftCountryKit

final class SwiftCountryKitTests: XCTestCase {
    func testExample() throws {
        let provider = CountryProvider()
        XCTAssertEqual(provider.allCountries.count, 239)
    }


}
