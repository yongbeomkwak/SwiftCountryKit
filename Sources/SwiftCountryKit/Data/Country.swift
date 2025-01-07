import Foundation

public struct Country: Decodable, Identifiable {
    public var id: String { code }
    public let code: String
    public let name: String
    public let number: String
}
