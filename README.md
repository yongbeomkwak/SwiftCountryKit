# SwiftCountryKit

*SwiftCountryKit* is a Swift package that provides **Calling Code** information for approximately 239 countries.  
With a simple API, you can easily retrieve the Calling Code for a specific country.

---

## Features

- **Access Calling Code Data**  
  - Includes Calling Codes for around 239 countries and regions.
- **Lookup a Specific Country's Calling Code**  
  - Retrieve the Calling Code for a country by providing its name.

---

## Installation

### Swift Package Manager (SPM)

```swift
dependencies: [
    .package(url: "https://github.com/yongbeomkwak/SwiftCountryKit.git", from: "1.0.0")
]
```

## Usage
```swift
import SwiftCountryKit

let provider = CountryProvider()

let provider = CountryProvider()

// Get the Calling Code for a specific country by its ISO code
provider.find("US")

// Get a list of all (ISOCode, Calling Code) 
provider.allCallingCodeWithISO

// Get a list of all Calling Codes
provider.allCallingCodes
```

## Registered Country Data
| Country | ISO Code | Calling Code |
|:-----------------:|:--------:|:------------:|
| Afghanistan | AF | +93 |
| Albania | AL | +355 |
| Algeria | DZ | +213 |
| American Samoa | AS | +1-684 |
| Andorra | AD | +376 |
| Angola | AO | +244 |
| Anguilla | AI | +1-264 |
| Antarctica | AQ | +672 |
| Antigua and Barbuda | AG | +1-268 |
| Argentina | AR | +54 |
| Armenia | AM | +374 |
| Aruba | AW | +297 |
| Australia | AU | +61 |
| Austria | AT | +43 |
| Azerbaijan | AZ | +994 |
| Bahamas | BS | +1-242 |
| Bahrain | BH | +973 |
| Bangladesh | BD | +880 |
| Barbados | BB | +1-246 |
| Belarus | BY | +375 |
| Belgium | BE | +32 |
| Belize | BZ | +501 |
| Benin | BJ | +229 |
| Bermuda | BM | +1-441 |
| Bhutan | BT | +975 |
| Bolivia | BO | +591 |
| Bosnia and Herzegovina | BA | +387 |
| Botswana | BW | +267 |
| Brazil | BR | +55 |
| British Indian Ocean Territory | IO | +246 |
| British Virgin Islands | VG | +1-284 |
| Brunei | BN | +673 |
| Bulgaria | BG | +359 |
| Burkina Faso | BF | +226 |
| Burundi | BI | +257 |
| Cambodia | KH | +855 |
| Cameroon | CM | +237 |
| Canada | CA | +1 |
| Cape Verde | CV | +238 |
| Cayman Islands | KY | +1-345 |
| Central African Republic | CF | +236 |
| Chad | TD | +235 |
| Chile | CL | +56 |
| China | CN | +86 |
| Christmas Island | CX | +61 |
| Cocos Islands | CC | +61 |
| Colombia | CO | +57 |
| Comoros | KM | +269 |
| Cook Islands | CK | +682 |
| Costa Rica | CR | +506 |
| Croatia | HR | +385 |
| Cuba | CU | +53 |
| Curacao | CW | +599 |
| Cyprus | CY | +357 |
| Czech Republic | CZ | +420 |
| Democratic Republic of the Congo | CD | +243 |
| Denmark | DK | +45 |
| Djibouti | DJ | +253 |
| Dominica | DM | +1-767 |
| East Timor | TL | +670 |
| Ecuador | EC | +593 |
| Egypt | EG | +20 |
| El Salvador | SV | +503 |
| Equatorial Guinea | GQ | +240 |
| Eritrea | ER | +291 |
| Estonia | EE | +372 |
| Ethiopia | ET | +251 |
| Falkland Islands | FK | +500 |
| Faroe Islands | FO | +298 |
| Fiji | FJ | +679 |
| Finland | FI | +358 |
| France | FR | +33 |
| French Polynesia | PF | +689 |
| Gabon | GA | +241 |
| Gambia | GM | +220 |
| Georgia | GE | +995 |
| Germany | DE | +49 |
| Ghana | GH | +233 |
| Gibraltar | GI | +350 |
| Greece | GR | +30 |
| Greenland | GL | +299 |
| Grenada | GD | +1-473 |
| Guam | GU | +1-671 |
| Guatemala | GT | +502 |
| Guernsey | GG | +44-1481 |
| Guinea | GN | +224 |
| Guinea-Bissau | GW | +245 |
| Guyana | GY | +592 |
| Haiti | HT | +509 |
| Honduras | HN | +504 |
| Hong Kong | HK | +852 |
| Hungary | HU | +36 |
| Iceland | IS | +354 |
| India | IN | +91 |
| Indonesia | ID | +62 |
| Iran | IR | +98 |
| Iraq | IQ | +964 |
| Ireland | IE | +353 |
| Isle of Man | IM | +44-1624 |
| Israel | IL | +972 |
| Italy | IT | +39 |
| Ivory Coast | CI | +225 |
| Jamaica | JM | +1-876 |
| Japan | JP | +81 |
| Jersey | JE | +44-1534 |
| Jordan | JO | +962 |
| Kazakhstan | KZ | +7 |
| Kenya | KE | +254 |
| Kiribati | KI | +686 |
| Kosovo | XK | +383 |
| Kuwait | KW | +965 |
| Kyrgyzstan | KG | +996 |
| Laos | LA | +856 |
| Latvia | LV | +371 |
| Lebanon | LB | +961 |
| Lesotho | LS | +266 |
| Liberia | LR | +231 |
| Libya | LY | +218 |
| Liechtenstein | LI | +423 |
| Lithuania | LT | +370 |
| Luxembourg | LU | +352 |
| Macau | MO | +853 |
| Macedonia | MK | +389 |
| Madagascar | MG | +261 |
| Malawi | MW | +265 |
| Malaysia | MY | +60 |
| Maldives | MV | +960 |
| Mali | ML | +223 |
| Malta | MT | +356 |
| Marshall Islands | MH | +692 |
| Mauritania | MR | +222 |
| Mauritius | MU | +230 |
| Mayotte | YT | +262 |
| Mexico | MX | +52 |
| Micronesia | FM | +691 |
| Moldova | MD | +373 |
| Monaco | MC | +377 |
| Mongolia | MN | +976 |
| Montenegro | ME | +382 |
| Montserrat | MS | +1-664 |
| Morocco | MA | +212 |
| Mozambique | MZ | +258 |
| Myanmar | MM | +95 |
| Namibia | NA | +264 |
| Nauru | NR | +674 |
| Nepal | NP | +977 |
| Netherlands | NL | +31 |
| Netherlands Antilles | AN | +599 |
| New Caledonia | NC | +687 |
| New Zealand | NZ | +64 |
| Nicaragua | NI | +505 |
| Niger | NE | +227 |
| Nigeria | NG | +234 |
| Niue | NU | +683 |
| North Korea | KP | +850 |
| Northern Mariana Islands | MP | +1-670 |
| Norway | NO | +47 |
| Oman | OM | +968 |
| Pakistan | PK | +92 |
| Palau | PW | +680 |
| Palestine | PS | +970 |
| Panama | PA | +507 |
| Papua New Guinea | PG | +675 |
| Paraguay | PY | +595 |
| Peru | PE | +51 |
| Philippines | PH | +63 |
| Pitcairn | PN | +64 |
| Poland | PL | +48 |
| Portugal | PT | +351 |
| Puerto Rico 1-787, | PR | +1-939 |
| Qatar | QA | +974 |
| Republic of the Congo | CG | +242 |
| Reunion | RE | +262 |
| Romania | RO | +40 |
| Russia | RU | +7 |
| Rwanda | RW | +250 |
| Saint Barthelemy | BL | +590 |
| Saint Helena | SH | +290 |
| Saint Kitts and Nevis | KN | +1-869 |
| Saint Lucia | LC | +1-758 |
| Saint Martin | MF | +590 |
| Saint Pierre and Miquelon | PM | +508 |
| Saint Vincent and the Grenadines | VC | +1-784 |
| Samoa | WS | +685 |
| San Marino | SM | +378 |
| Sao Tome and Principe | ST | +239 |
| Saudi Arabia | SA | +966 |
| Senegal | SN | +221 |
| Serbia | RS | +381 |
| Seychelles | SC | +248 |
| Sierra Leone | SL | +232 |
| Singapore | SG | +65 |
| Sint Maarten | SX | +1-721 |
| Slovakia | SK | +421 |
| Slovenia | SI | +386 |
| Solomon Islands | SB | +677 |
| Somalia | SO | +252 |
| South Africa | ZA | +27 |
| South Korea | KR | +82 |
| South Sudan | SS | +211 |
| Spain | ES | +34 |
| Sri Lanka | LK | +94 |
| Sudan | SD | +249 |
| Suriname | SR | +597 |
| Svalbard and Jan Mayen | SJ | +47 |
| Swaziland | SZ | +268 |
| Sweden | SE | +46 |
| Switzerland | CH | +41 |
| Syria | SY | +963 |
| Taiwan | TW | +886 |
| Tajikistan | TJ | +992 |
| Tanzania | TZ | +255 |
| Thailand | TH | +66 |
| Togo | TG | +228 |
| Tokelau | TK | +690 |
| Tonga | TO | +676 |
| Trinidad and Tobago | TT | +1-868 |
| Tunisia | TN | +216 |
| Turkey | TR | +90 |
| Turkmenistan | TM | +993 |
| Turks and Caicos Islands | TC | +1-649 |
| Tuvalu | TV | +688 |
| U.S. Virgin Islands | VI | +1-340 |
| Uganda | UG | +256 |
| Ukraine | UA | +380 |
| United Arab Emirates | AE | +971 |
| United Kingdom | GB | +44 |
| United States | US | +1 |
| Uruguay | UY | +598 |
| Uzbekistan | UZ | +998 |
| Vanuatu | VU | +678 |
| Vatican | VA | +379 |
| Venezuela | VE | +58 |
| Vietnam | VN | +84 |
| Wallis and Futuna | WF | +681 |
| Western Sahara | EH | +212 |
| Yemen | YE | +967 |
| Zambia | ZM | +260 |
| Zimbabwe | ZW | +263 |

## Contribution

If you’d like to add data for a new country or improve the package, here’s how you can contribute:
	1.	Pull Request
	•	Submit a PR to add new data or propose improvements.
	2.	Email
	•	Contact us at [email](yongbeomkwak@gmail.com) to request new country data or report issues.
