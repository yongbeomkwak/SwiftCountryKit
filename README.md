# SwiftCountryKit

*SwiftCountryKit* is a Swift package that provides **Calling Code** information for approximately 239 countries.  
With a simple API, you can easily retrieve the Calling Code for a specific country.

---

## Features

- **Access Calling Code Data**  
  - Includes Calling Codes for around 239 countries and regions.
- **Lookup a Specific Country's Calling Code**  
  - Retrieve the Calling Code for a country by providing ISOCode.

---

## Installation

### Swift Package Manager (SPM)

```swift
dependencies: [
    .package(url: "https://github.com/yongbeomkwak/SwiftCountryKit.git", from: "1.0.0")
]
```

## Usage

### Country Structure
```swift
public struct Country {
    let ISOCode: String
    let callingCode: String
}
```

### Provider
```swift
import SwiftCountryKit

let provider = CountryProvider()


// Get the Calling Code for a specific country by its ISO code
provider.find("US")

// Get a list of all (ISOCode, Calling Code) 
provider.allCountries

// Get a list of all Calling Codes
provider.allCallingCodes
```

## Registered Country Data
| Country | ISO Code | Calling Code |
|:-----------------:|:--------:|:------------:|
| Andorra | AD | +376 |
| United Arab Emirates | AE | +971 |
| Afghanistan | AF | +93 |
| Antigua and Barbuda | AG | +1 |
| Anguilla | AI | +1 |
| Albania | AL | +355 |
| Armenia | AM | +374 |
| Angola | AO | +244 |
| Antarctica | AQ | +672 |
| Argentina | AR | +54 |
| American Samoa | AS | +1 |
| Austria | AT | +43 |
| Australia | AU | +61 |
| Aruba | AW | +297 |
| Azerbaijan | AZ | +994 |
| Bosnia and Herzegovina | BA | +387 |
| Barbados | BB | +1 |
| Bangladesh | BD | +880 |
| Belgium | BE | +32 |
| Burkina Faso | BF | +226 |
| Bulgaria | BG | +359 |
| Bahrain | BH | +973 |
| Burundi | BI | +257 |
| Benin | BJ | +229 |
| Saint Barthelemy | BL | +590 |
| Bermuda | BM | +1 |
| Brunei | BN | +673 |
| Bolivia | BO | +591 |
| Brazil | BR | +55 |
| Bahamas | BS | +1 |
| Bhutan | BT | +975 |
| Botswana | BW | +267 |
| Belarus | BY | +375 |
| Belize | BZ | +501 |
| Canada | CA | +1 |
| Cocos Islands | CC | +61 |
| Democratic Republic of the Congo | CD | +243 |
| Central African Republic | CF | +236 |
| Republic of the Congo | CG | +242 |
| Switzerland | CH | +41 |
| Ivory Coast | CI | +225 |
| Cook Islands | CK | +682 |
| Chile | CL | +56 |
| Cameroon | CM | +237 |
| China | CN | +86 |
| Colombia | CO | +57 |
| Costa Rica | CR | +506 |
| Cuba | CU | +53 |
| Cape Verde | CV | +238 |
| Curacao | CW | +599 |
| Christmas Island | CX | +61 |
| Cyprus | CY | +357 |
| Czech Republic | CZ | +420 |
| Germany | DE | +49 |
| Djibouti | DJ | +253 |
| Denmark | DK | +45 |
| Dominica | DM | +1 |
| Dominican Republic | DO | +1 |
| Algeria | DZ | +213 |
| Ecuador | EC | +593 |
| Estonia | EE | +372 |
| Egypt | EG | +20 |
| Western Sahara | EH | +212 |
| Eritrea | ER | +291 |
| Spain | ES | +34 |
| Ethiopia | ET | +251 |
| Finland | FI | +358 |
| Fiji | FJ | +679 |
| Falkland Islands | FK | +500 |
| Micronesia | FM | +691 |
| Faroe Islands | FO | +298 |
| France | FR | +33 |
| Gabon | GA | +241 |
| United Kingdom | GB | +44 |
| Grenada | GD | +1 |
| Georgia | GE | +995 |
| Guernsey | GG | +44 |
| Ghana | GH | +233 |
| Gibraltar | GI | +350 |
| Greenland | GL | +299 |
| Gambia | GM | +220 |
| Guinea | GN | +224 |
| Equatorial Guinea | GQ | +240 |
| Greece | GR | +30 |
| Guatemala | GT | +502 |
| Guam | GU | +1 |
| Guinea-Bissau | GW | +245 |
| Guyana | GY | +592 |
| Hong Kong | HK | +852 |
| Honduras | HN | +504 |
| Croatia | HR | +385 |
| Haiti | HT | +509 |
| Hungary | HU | +36 |
| Indonesia | ID | +62 |
| Ireland | IE | +353 |
| Israel | IL | +972 |
| Isle of Man | IM | +44-1624 |
| India | IN | +91 |
| British Indian Ocean Territory | IO | +246 |
| Iraq | IQ | +964 |
| Iran | IR | +98 |
| Iceland | IS | +354 |
| Italy | IT | +39 |
| Jersey | JE | +44 |
| Jamaica | JM | +1 |
| Jordan | JO | +962 |
| Japan | JP | +81 |
| Kenya | KE | +254 |
| Kyrgyzstan | KG | +996 |
| Cambodia | KH | +855 |
| Kiribati | KI | +686 |
| Comoros | KM | +269 |
| Saint Kitts and Nevis | KN | +1 |
| North Korea | KP | +850 |
| South Korea | KR | +82 |
| Kuwait | KW | +965 |
| Cayman Islands | KY | +1 |
| Kazakhstan | KZ | +7 |
| Laos | LA | +856 |
| Lebanon | LB | +961 |
| Saint Lucia | LC | +1 |
| Liechtenstein | LI | +423 |
| Sri Lanka | LK | +94 |
| Liberia | LR | +231 |
| Lesotho | LS | +266 |
| Lithuania | LT | +370 |
| Luxembourg | LU | +352 |
| Latvia | LV | +371 |
| Libya | LY | +218 |
| Morocco | MA | +212 |
| Monaco | MC | +377 |
| Moldova | MD | +373 |
| Montenegro | ME | +382 |
| Saint Martin | MF | +590 |
| Madagascar | MG | +261 |
| Marshall Islands | MH | +692 |
| Macedonia | MK | +389 |
| Mali | ML | +223 |
| Myanmar | MM | +95 |
| Mongolia | MN | +976 |
| Macau | MO | +853 |
| Northern Mariana Islands | MP | +1 |
| Mauritania | MR | +222 |
| Montserrat | MS | +1 |
| Malta | MT | +356 |
| Mauritius | MU | +230 |
| Maldives | MV | +960 |
| Malawi | MW | +265 |
| Mexico | MX | +52 |
| Malaysia | MY | +60 |
| Mozambique | MZ | +258 |
| Namibia | NA | +264 |
| New Caledonia | NC | +687 |
| Niger | NE | +227 |
| Nigeria | NG | +234 |
| Nicaragua | NI | +505 |
| Netherlands | NL | +31 |
| Norway | NO | +47 |
| Nepal | NP | +977 |
| Nauru | NR | +674 |
| Niue | NU | +683 |
| New Zealand | NZ | +64 |
| Oman | OM | +968 |
| Panama | PA | +507 |
| Peru | PE | +51 |
| French Polynesia | PF | +689 |
| Papua New Guinea | PG | +675 |
| Philippines | PH | +63 |
| Pakistan | PK | +92 |
| Poland | PL | +48 |
| Saint Pierre and Miquelon | PM | +508 |
| Pitcairn | PN | +64 |
| Puerto Rico | PR | +1 |
| Palestine | PS | +970 |
| Portugal | PT | +351 |
| Palau | PW | +680 |
| Paraguay | PY | +595 |
| Qatar | QA | +974 |
| Reunion | RE | +262 |
| Romania | RO | +40 |
| Serbia | RS | +381 |
| Russia | RU | +7 |
| Rwanda | RW | +250 |
| Saudi Arabia | SA | +966 |
| Solomon Islands | SB | +677 |
| Seychelles | SC | +248 |
| Sudan | SD | +249 |
| Sweden | SE | +46 |
| Singapore | SG | +65 |
| Saint Helena | SH | +290 |
| Slovenia | SI | +386 |
| Svalbard and Jan Mayen | SJ | +47 |
| Slovakia | SK | +421 |
| Sierra Leone | SL | +232 |
| San Marino | SM | +378 |
| Senegal | SN | +221 |
| Somalia | SO | +252 |
| Suriname | SR | +597 |
| South Sudan | SS | +211 |
| Sao Tome and Principe | ST | +239 |
| El Salvador | SV | +503 |
| Sint Maarten | SX | +1 |
| Syria | SY | +963 |
| Swaziland | SZ | +268 |
| Turks and Caicos Islands | TC | +1 |
| Chad | TD | +235 |
| Togo | TG | +228 |
| Thailand | TH | +66 |
| Tajikistan | TJ | +992 |
| Tokelau | TK | +690 |
| East Timor | TL | +670 |
| Turkmenistan | TM | +993 |
| Tunisia | TN | +216 |
| Tonga | TO | +676 |
| Turkey | TR | +90 |
| Trinidad and Tobago | TT | +1 |
| Tuvalu | TV | +688 |
| Taiwan | TW | +886 |
| Tanzania | TZ | +255 |
| Ukraine | UA | +380 |
| Uganda | UG | +256 |
| United States | US | +1 |
| Uruguay | UY | +598 |
| Uzbekistan | UZ | +998 |
| Vatican | VA | +379 |
| Saint Vincent and the Grenadines | VC | +1 |
| Venezuela | VE | +58 |
| British Virgin Islands | VG | +1 |
| U.S. Virgin Islands | VI | +1 |
| Vietnam | VN | +84 |
| Vanuatu | VU | +678 |
| Wallis and Futuna | WF | +681 |
| Samoa | WS | +685 |
| Kosovo | XK | +383 |
| Yemen | YE | +967 |
| Mayotte | YT | +262 |
| South Africa | ZA | +27 |
| Zambia | ZM | +260 |
| Zimbabwe | ZW | +263 |

## Contribution

If you’d like to add data for a new country or improve the package, here’s how you can contribute:

1. Pull Request
- Submit a PR to add new data or propose improvements.

2. Email
- Contact us at `yongbeomkwak@gmail.com` to request new country data or report issues.
