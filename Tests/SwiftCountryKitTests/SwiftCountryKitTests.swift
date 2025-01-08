import XCTest
@testable import SwiftCountryKit

final class SwiftCountryKitTests: XCTestCase {
    func testExample() throws {
        let countryKit = CountryProvider()
        let allID = Locale.availableIdentifiers.sorted().count

        print(allID)

//        for id in allID {
//            print(id)
//        }

        XCTAssertEqual(countryKit.callingCodes.count, 239)
        XCTAssertNotEqual(countryKit.find("US"), "+1")
    }
}
