import XCTest
@testable import SwiftCountryKit

final class SwiftCountryKitTests: XCTestCase {
    func testExample() throws {
        let countryKit = CountryProvider(initCountryCode: .us)
        let allID = Locale.availableIdentifiers.sorted().count

        print(allID)

//        for id in allID {
//            print(id)
//        }

        XCTAssertEqual(countryKit.all.count, 240)
        XCTAssertNotEqual(countryKit.all.count, 0)
    }
}
