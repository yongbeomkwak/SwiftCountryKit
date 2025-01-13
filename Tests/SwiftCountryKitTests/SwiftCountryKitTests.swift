import XCTest
@testable import SwiftCountryKit

final class SwiftCountryKitTests: XCTestCase {
    func testExample() throws {
        let provider = CountryProvider()
        XCTAssertEqual(provider.allCountries.count, 239)
    }

    func testAllCountriesCanConvertImage() throws {
        let provider = CountryProvider()

        print(provider.allCountries)

        for country in provider.allCountries {
            XCTAssertNotNil(country.image, "\(country.ISOCode) not have image")
        }
    }
}
