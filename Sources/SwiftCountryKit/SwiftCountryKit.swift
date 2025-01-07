// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public struct SwiftCountryKit {
    private let decoder = JSONDecoder()
    private var countries: [Country] = []

    public var all: [Country] {
        return countries
    }

    public var initCountry: Country = Country(code: "US", name: "United States", number: "+1")

    public init(initCountryCode: ISOCode) {
        countries = load()
        initCountry = findInitCountry(code: initCountryCode)
    }
}

extension SwiftCountryKit {
    private func load() -> [Country] {
        guard let url = Bundle.module.url(forResource: "countries", withExtension: "json") else {
            SCLogger.printError("notFounded json")
            return []
        }
        do {
            let data = try Data(contentsOf: url)
            return try decoder.decode([Country].self, from: data)
        } catch {
            SCLogger.printError("decoding Failed [Country] from json")
            return []
        }
    }

    private func findInitCountry(code: ISOCode) -> Country {
        countries.first { $0.code == code.rawValue } ?? Country(code: "US", name: "United States", number: "+1")
    }
}
