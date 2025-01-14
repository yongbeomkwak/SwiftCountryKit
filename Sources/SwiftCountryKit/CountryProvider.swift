// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

public struct Country : Sendable {
    public static let `default` = Country(ISOCode: "US", callingCode: "+1")
    public let ISOCode: String
    public let callingCode: String
    public var name: String {
        Locale.current.localizedString(forRegionCode: ISOCode) ?? Locale.current.localizedString(forRegionCode: "US")!
    }
    public var image: UIImage? {
        return UIImage(named: ISOCode, in: .module, compatibleWith: nil)
    }
}

public struct CountryProvider {
    private var dict: [String : Country] = [:]

    public var allCountries: [Country] {
        return dict.map { Country(ISOCode: $0.key, callingCode: $0.value.callingCode) }.sorted(by: { $0.name < $1.name })
    }

    public var allCallingCodes: [String] {
        return  dict.values.map(\.callingCode)
    }

    public init() {
        dict = load()
    }

    public func find(_ ISOCode: String) -> Country {
        dict[ISOCode] ?? Country(ISOCode: "US", callingCode: "+1")
    }
}

extension CountryProvider {
    private func load() -> [String: Country] {
        return [
        "AD" :  Country(ISOCode: "AD", callingCode:"+376"),
        "AE" :  Country(ISOCode: "AE", callingCode:"+971"),
        "AF" :  Country(ISOCode: "AF", callingCode:"+93"),
        "AG" :  Country(ISOCode: "AG", callingCode:"+1"),
        "AI" :  Country(ISOCode: "AI", callingCode:"+1"),
        "AL" :  Country(ISOCode: "AL", callingCode:"+355"),
        "AM" :  Country(ISOCode: "AM", callingCode:"+374"),
        "AO" :  Country(ISOCode: "AO", callingCode:"+244"),
        "AQ" :  Country(ISOCode: "AQ", callingCode:"+672"),
        "AR" :  Country(ISOCode: "AR", callingCode:"+54"),
        "AS" :  Country(ISOCode: "AS", callingCode:"+1"),
        "AT" :  Country(ISOCode: "AT", callingCode:"+43"),
        "AU" :  Country(ISOCode: "AU", callingCode:"+61"),
        "AW" :  Country(ISOCode: "AW", callingCode:"+297"),
        "AZ" :  Country(ISOCode: "AZ", callingCode:"+994"),
        "BA" :  Country(ISOCode: "BA", callingCode:"+387"),
        "BB" :  Country(ISOCode: "BB", callingCode:"+1"),
        "BD" :  Country(ISOCode: "BD", callingCode:"+880"),
        "BE" :  Country(ISOCode: "BE", callingCode:"+32"),
        "BF" :  Country(ISOCode: "BF", callingCode:"+226"),
        "BG" :  Country(ISOCode: "BG", callingCode:"+359"),
        "BH" :  Country(ISOCode: "BH", callingCode:"+973"),
        "BI" :  Country(ISOCode: "BI", callingCode:"+257"),
        "BJ" :  Country(ISOCode: "BJ", callingCode:"+229"),
        "BL" :  Country(ISOCode: "BL", callingCode:"+590"),
        "BM" :  Country(ISOCode: "BM", callingCode:"+1"),
        "BN" :  Country(ISOCode: "BN", callingCode:"+673"),
        "BO" :  Country(ISOCode: "BO", callingCode:"+591"),
        "BR" :  Country(ISOCode: "BR", callingCode:"+55"),
        "BS" :  Country(ISOCode: "BS", callingCode:"+1"),
        "BT" :  Country(ISOCode: "BT", callingCode:"+975"),
        "BW" :  Country(ISOCode: "BW", callingCode:"+267"),
        "BY" :  Country(ISOCode: "BY", callingCode:"+375"),
        "BZ" :  Country(ISOCode: "BZ", callingCode:"+501"),
        "CA" :  Country(ISOCode: "CA", callingCode:"+1"),
        "CC" :  Country(ISOCode: "CC", callingCode:"+61"),
        "CD" :  Country(ISOCode: "CD", callingCode:"+243"),
        "CF" :  Country(ISOCode: "CF", callingCode:"+236"),
        "CG" :  Country(ISOCode: "CG", callingCode:"+242"),
        "CH" :  Country(ISOCode: "CH", callingCode:"+41"),
        "CI" :  Country(ISOCode: "CI", callingCode:"+225"),
        "CK" :  Country(ISOCode: "CK", callingCode:"+682"),
        "CL" :  Country(ISOCode: "CL", callingCode:"+56"),
        "CM" :  Country(ISOCode: "CM", callingCode:"+237"),
        "CN" :  Country(ISOCode: "CN", callingCode:"+86"),
        "CO" :  Country(ISOCode: "CO", callingCode:"+57"),
        "CR" :  Country(ISOCode: "CR", callingCode:"+506"),
        "CU" :  Country(ISOCode: "CU", callingCode:"+53"),
        "CV" :  Country(ISOCode: "CV", callingCode:"+238"),
        "CW" :  Country(ISOCode: "CW", callingCode:"+599"),
        "CX" :  Country(ISOCode: "CX", callingCode:"+61"),
        "CY" :  Country(ISOCode: "CY", callingCode:"+357"),
        "CZ" :  Country(ISOCode: "CZ", callingCode:"+420"),
        "DE" :  Country(ISOCode: "DE", callingCode:"+49"),
        "DJ" :  Country(ISOCode: "DJ", callingCode:"+253"),
        "DK" :  Country(ISOCode: "DK", callingCode:"+45"),
        "DM" :  Country(ISOCode: "DM", callingCode:"+1"),
        "DO" :  Country(ISOCode: "DO", callingCode:"+1"),
        "DZ" :  Country(ISOCode: "DZ", callingCode:"+213"),
        "EC" :  Country(ISOCode: "EC", callingCode:"+593"),
        "EE" :  Country(ISOCode: "EE", callingCode:"+372"),
        "EG" :  Country(ISOCode: "EG", callingCode:"+20"),
        "EH" :  Country(ISOCode: "EH", callingCode:"+212"),
        "ER" :  Country(ISOCode: "ER", callingCode:"+291"),
        "ES" :  Country(ISOCode: "ES", callingCode:"+34"),
        "ET" :  Country(ISOCode: "ET", callingCode:"+251"),
        "FI" :  Country(ISOCode: "FI", callingCode:"+358"),
        "FJ" :  Country(ISOCode: "FJ", callingCode:"+679"),
        "FK" :  Country(ISOCode: "FK", callingCode:"+500"),
        "FM" :  Country(ISOCode: "FM", callingCode:"+691"),
        "FO" :  Country(ISOCode: "FO", callingCode:"+298"),
        "FR" :  Country(ISOCode: "FR", callingCode:"+33"),
        "GA" :  Country(ISOCode: "GA", callingCode:"+241"),
        "GB" :  Country(ISOCode: "GB", callingCode:"+44"),
        "GD" :  Country(ISOCode: "GD", callingCode:"+1"),
        "GE" :  Country(ISOCode: "GE", callingCode:"+995"),
        "GG" :  Country(ISOCode: "GG", callingCode:"+44"),
        "GH" :  Country(ISOCode: "GH", callingCode:"+233"),
        "GI" :  Country(ISOCode: "GI", callingCode:"+350"),
        "GL" :  Country(ISOCode: "GL", callingCode:"+299"),
        "GM" :  Country(ISOCode: "GM", callingCode:"+220"),
        "GN" :  Country(ISOCode: "GN", callingCode:"+224"),
        "GQ" :  Country(ISOCode: "GQ", callingCode:"+240"),
        "GR" :  Country(ISOCode: "GR", callingCode:"+30"),
        "GT" :  Country(ISOCode: "GT", callingCode:"+502"),
        "GU" :  Country(ISOCode: "GU", callingCode:"+1"),
        "GW" :  Country(ISOCode: "GW", callingCode:"+245"),
        "GY" :  Country(ISOCode: "GY", callingCode:"+592"),
        "HK" :  Country(ISOCode: "HK", callingCode:"+852"),
        "HN" :  Country(ISOCode: "HN", callingCode:"+504"),
        "HR" :  Country(ISOCode: "HR", callingCode:"+385"),
        "HT" :  Country(ISOCode: "HT", callingCode:"+509"),
        "HU" :  Country(ISOCode: "HU", callingCode:"+36"),
        "ID" :  Country(ISOCode: "ID", callingCode:"+62"),
        "IE" :  Country(ISOCode: "IE", callingCode:"+353"),
        "IL" :  Country(ISOCode: "IL", callingCode:"+972"),
        "IM" :  Country(ISOCode: "IM", callingCode:"+44"),
        "IN" :  Country(ISOCode: "IN", callingCode:"+91"),
        "IO" :  Country(ISOCode: "IO", callingCode:"+246"),
        "IQ" :  Country(ISOCode: "IQ", callingCode:"+964"),
        "IR" :  Country(ISOCode: "IR", callingCode:"+98"),
        "IS" :  Country(ISOCode: "IS", callingCode:"+354"),
        "IT" :  Country(ISOCode: "IT", callingCode:"+39"),
        "JE" :  Country(ISOCode: "JE", callingCode:"+44"),
        "JM" :  Country(ISOCode: "JM", callingCode:"+1"),
        "JO" :  Country(ISOCode: "JO", callingCode:"+962"),
        "JP" :  Country(ISOCode: "JP", callingCode:"+81"),
        "KE" :  Country(ISOCode: "KE", callingCode:"+254"),
        "KG" :  Country(ISOCode: "KG", callingCode:"+996"),
        "KH" :  Country(ISOCode: "KH", callingCode:"+855"),
        "KI" :  Country(ISOCode: "KI", callingCode:"+686"),
        "KM" :  Country(ISOCode: "KM", callingCode:"+269"),
        "KN" :  Country(ISOCode: "KN", callingCode:"+1"),
        "KP" :  Country(ISOCode: "KP", callingCode:"+850"),
        "KR" :  Country(ISOCode: "KR", callingCode:"+82"),
        "KW" :  Country(ISOCode: "KW", callingCode:"+965"),
        "KY" :  Country(ISOCode: "KY", callingCode:"+1"),
        "KZ" :  Country(ISOCode: "KZ", callingCode:"+7"),
        "LA" :  Country(ISOCode: "LA", callingCode:"+856"),
        "LB" :  Country(ISOCode: "LB", callingCode:"+961"),
        "LC" :  Country(ISOCode: "LC", callingCode:"+1"),
        "LI" :  Country(ISOCode: "LI", callingCode:"+423"),
        "LK" :  Country(ISOCode: "LK", callingCode:"+94"),
        "LR" :  Country(ISOCode: "LR", callingCode:"+231"),
        "LS" :  Country(ISOCode: "LS", callingCode:"+266"),
        "LT" :  Country(ISOCode: "LT", callingCode:"+370"),
        "LU" :  Country(ISOCode: "LU", callingCode:"+352"),
        "LV" :  Country(ISOCode: "LV", callingCode:"+371"),
        "LY" :  Country(ISOCode: "LY", callingCode:"+218"),
        "MA" :  Country(ISOCode: "MA", callingCode:"+212"),
        "MC" :  Country(ISOCode: "MC", callingCode:"+377"),
        "MD" :  Country(ISOCode: "MD", callingCode:"+373"),
        "ME" :  Country(ISOCode: "ME", callingCode:"+382"),
        "MF" :  Country(ISOCode: "MF", callingCode:"+590"),
        "MG" :  Country(ISOCode: "MG", callingCode:"+261"),
        "MH" :  Country(ISOCode: "MH", callingCode:"+692"),
        "MK" :  Country(ISOCode: "MK", callingCode:"+389"),
        "ML" :  Country(ISOCode: "ML", callingCode:"+223"),
        "MM" :  Country(ISOCode: "MM", callingCode:"+95"),
        "MN" :  Country(ISOCode: "MN", callingCode:"+976"),
        "MO" :  Country(ISOCode: "MO", callingCode:"+853"),
        "MP" :  Country(ISOCode: "MP", callingCode:"+1"),
        "MR" :  Country(ISOCode: "MR", callingCode:"+222"),
        "MS" :  Country(ISOCode: "MS", callingCode:"+1"),
        "MT" :  Country(ISOCode: "MT", callingCode:"+356"),
        "MU" :  Country(ISOCode: "MU", callingCode:"+230"),
        "MV" :  Country(ISOCode: "MV", callingCode:"+960"),
        "MW" :  Country(ISOCode: "MW", callingCode:"+265"),
        "MX" :  Country(ISOCode: "MX", callingCode:"+52"),
        "MY" :  Country(ISOCode: "MY", callingCode:"+60"),
        "MZ" :  Country(ISOCode: "MZ", callingCode:"+258"),
        "NA" :  Country(ISOCode: "NA", callingCode:"+264"),
        "NC" :  Country(ISOCode: "NC", callingCode:"+687"),
        "NE" :  Country(ISOCode: "NE", callingCode:"+227"),
        "NG" :  Country(ISOCode: "NG", callingCode:"+234"),
        "NI" :  Country(ISOCode: "NI", callingCode:"+505"),
        "NL" :  Country(ISOCode: "NL", callingCode:"+31"),
        "NO" :  Country(ISOCode: "NO", callingCode:"+47"),
        "NP" :  Country(ISOCode: "NP", callingCode:"+977"),
        "NR" :  Country(ISOCode: "NR", callingCode:"+674"),
        "NU" :  Country(ISOCode: "NU", callingCode:"+683"),
        "NZ" :  Country(ISOCode: "NZ", callingCode:"+64"),
        "OM" :  Country(ISOCode: "OM", callingCode:"+968"),
        "PA" :  Country(ISOCode: "PA", callingCode:"+507"),
        "PE" :  Country(ISOCode: "PE", callingCode:"+51"),
        "PF" :  Country(ISOCode: "PF", callingCode:"+689"),
        "PG" :  Country(ISOCode: "PG", callingCode:"+675"),
        "PH" :  Country(ISOCode: "PH", callingCode:"+63"),
        "PK" :  Country(ISOCode: "PK", callingCode:"+92"),
        "PL" :  Country(ISOCode: "PL", callingCode:"+48"),
        "PM" :  Country(ISOCode: "PM", callingCode:"+508"),
        "PN" :  Country(ISOCode: "PN", callingCode:"+64"),
        "PR" :  Country(ISOCode: "PR", callingCode:"+1"),
        "PS" :  Country(ISOCode: "PS", callingCode:"+970"),
        "PT" :  Country(ISOCode: "PT", callingCode:"+351"),
        "PW" :  Country(ISOCode: "PW", callingCode:"+680"),
        "PY" :  Country(ISOCode: "PY", callingCode:"+595"),
        "QA" :  Country(ISOCode: "QA", callingCode:"+974"),
        "RE" :  Country(ISOCode: "RE", callingCode:"+262"),
        "RO" :  Country(ISOCode: "RO", callingCode:"+40"),
        "RS" :  Country(ISOCode: "RS", callingCode:"+381"),
        "RU" :  Country(ISOCode: "RU", callingCode:"+7"),
        "RW" :  Country(ISOCode: "RW", callingCode:"+250"),
        "SA" :  Country(ISOCode: "SA", callingCode:"+966"),
        "SB" :  Country(ISOCode: "SB", callingCode:"+677"),
        "SC" :  Country(ISOCode: "SC", callingCode:"+248"),
        "SD" :  Country(ISOCode: "SD", callingCode:"+249"),
        "SE" :  Country(ISOCode: "SE", callingCode:"+46"),
        "SG" :  Country(ISOCode: "SG", callingCode:"+65"),
        "SH" :  Country(ISOCode: "SH", callingCode:"+290"),
        "SI" :  Country(ISOCode: "SI", callingCode:"+386"),
        "SJ" :  Country(ISOCode: "SJ", callingCode:"+47"),
        "SK" :  Country(ISOCode: "SK", callingCode:"+421"),
        "SL" :  Country(ISOCode: "SL", callingCode:"+232"),
        "SM" :  Country(ISOCode: "SM", callingCode:"+378"),
        "SN" :  Country(ISOCode: "SN", callingCode:"+221"),
        "SO" :  Country(ISOCode: "SO", callingCode:"+252"),
        "SR" :  Country(ISOCode: "SR", callingCode:"+597"),
        "SS" :  Country(ISOCode: "SS", callingCode:"+211"),
        "ST" :  Country(ISOCode: "ST", callingCode:"+239"),
        "SV" :  Country(ISOCode: "SV", callingCode:"+503"),
        "SX" :  Country(ISOCode: "SX", callingCode:"+1"),
        "SY" :  Country(ISOCode: "SY", callingCode:"+963"),
        "SZ" :  Country(ISOCode: "SZ", callingCode:"+268"),
        "TC" :  Country(ISOCode: "TC", callingCode:"+1"),
        "TD" :  Country(ISOCode: "TD", callingCode:"+235"),
        "TG" :  Country(ISOCode: "TG", callingCode:"+228"),
        "TH" :  Country(ISOCode: "TH", callingCode:"+66"),
        "TJ" :  Country(ISOCode: "TJ", callingCode:"+992"),
        "TK" :  Country(ISOCode: "TK", callingCode:"+690"),
        "TL" :  Country(ISOCode: "TL", callingCode:"+670"),
        "TM" :  Country(ISOCode: "TM", callingCode:"+993"),
        "TN" :  Country(ISOCode: "TN", callingCode:"+216"),
        "TO" :  Country(ISOCode: "TO", callingCode:"+676"),
        "TR" :  Country(ISOCode: "TR", callingCode:"+90"),
        "TT" :  Country(ISOCode: "TT", callingCode:"+1"),
        "TV" :  Country(ISOCode: "TV", callingCode:"+688"),
        "TW" :  Country(ISOCode: "TW", callingCode:"+886"),
        "TZ" :  Country(ISOCode: "TZ", callingCode:"+255"),
        "UA" :  Country(ISOCode: "UA", callingCode:"+380"),
        "UG" :  Country(ISOCode: "UG", callingCode:"+256"),
        "US" :  Country(ISOCode: "US", callingCode:"+1"),
        "UY" :  Country(ISOCode: "UY", callingCode:"+598"),
        "UZ" :  Country(ISOCode: "UZ", callingCode:"+998"),
        "VA" :  Country(ISOCode: "VA", callingCode:"+379"),
        "VC" :  Country(ISOCode: "VC", callingCode:"+1"),
        "VE" :  Country(ISOCode: "VE", callingCode:"+58"),
        "VG" :  Country(ISOCode: "VG", callingCode:"+1"),
        "VI" :  Country(ISOCode: "VI", callingCode:"+1"),
        "VN" :  Country(ISOCode: "VN", callingCode:"+84"),
        "VU" :  Country(ISOCode: "VU", callingCode:"+678"),
        "WF" :  Country(ISOCode: "WF", callingCode:"+681"),
        "WS" :  Country(ISOCode: "WS", callingCode:"+685"),
        "XK" :  Country(ISOCode: "XK", callingCode:"+383"),
        "YE" :  Country(ISOCode: "YE", callingCode:"+967"),
        "YT" :  Country(ISOCode: "YT", callingCode:"+262"),
        "ZA" :  Country(ISOCode: "ZA", callingCode:"+27"),
        "ZM" :  Country(ISOCode: "ZM", callingCode:"+260"),
        "ZW" :  Country(ISOCode: "ZW", callingCode:"+263"),
        ]
    }
}
