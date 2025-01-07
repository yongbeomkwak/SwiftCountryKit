import Foundation

public struct Country: Decodable, Identifiable {
    public var id: String { code }
    let code: String
    let name: String
    let number: String
}
