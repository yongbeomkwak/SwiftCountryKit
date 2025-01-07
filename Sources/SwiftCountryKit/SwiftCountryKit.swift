// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

enum DecodeError: Error {
    case notFounded
    case decodingFail
}


struct SwiftCountryKit {
    private let decoder = JSONDecoder()
    private var countries: [Country] = []

    var all: [Country] {
        return countries
    }

    init() throws {
        countries = try load()
    }
}

extension SwiftCountryKit {
    private func load() throws -> [Country] {
        guard let url = Bundle.module.url(forResource: "countries", withExtension: "json") else {
            SCLogger.printError("notFounded json")
            throw DecodeError.notFounded }
        do {
            let data = try Data(contentsOf: url)
            return try decoder.decode([Country].self, from: data)
        } catch {
            throw DecodeError.decodingFail
        }
    }
}
