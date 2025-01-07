import os
import json

# 입력 문자열
input_data = """
Afghanistan 93      AF
Albania 355     AL
Algeria 213     DZ
American Samoa  1-684   AS
Andorra 376     AD
Angola  244     AO
Anguilla        1-264   AI
Antarctica      672     AQ
Antigua and Barbuda     1-268   AG
Argentina       54      AR
Armenia 374     AM
Aruba   297     AW
Australia       61      AU
Austria 43      AT
Azerbaijan      994     AZ
Bahamas 1-242   BS
Bahrain 973     BH
Bangladesh      880     BD
Barbados        1-246   BB
Belarus 375     BY
Belgium 32      BE
Belize  501     BZ
Benin   229     BJ
Bermuda 1-441   BM
Bhutan  975     BT
Bolivia 591     BO
Bosnia and Herzegovina 387     BA
Botswana        267     BW
Brazil  55      BR
British Indian Ocean Territory  246     IO
British Virgin Islands  1-284   VG
Brunei  673     BN
Bulgaria        359     BG
Burkina Faso    226     BF
Burundi 257     BI
Cambodia        855     KH
Cameroon        237     CM
Canada  1       CA
Cape Verde      238     CV
Cayman Islands  1-345   KY
Central African Republic        236     CF
Chad    235     TD
Chile   56      CL
China   86      CN
Christmas Island        61      CX
Cocos Islands   61      CC
Colombia        57      CO
Comoros 269     KM
Cook Islands    682     CK
Costa Rica      506     CR
Croatia 385     HR
Cuba    53      CU
Curacao 599     CW
Cyprus  357     CY
Czech Republic  420     CZ
Democratic Republic of the Congo        243     CD
Denmark 45      DK
Djibouti        253     DJ
Dominica        1-767   DM
Dominican Republic      1-809, 1-829, 1-849     DO
East Timor      670     TL
Ecuador 593     EC
Egypt   20      EG
El Salvador     503     SV
Equatorial Guinea       240     GQ
Eritrea 291     ER
Estonia 372     EE
Ethiopia        251     ET
Falkland Islands        500     FK
Faroe Islands   298     FO
Fiji    679     FJ
Finland 358     FI
France  33      FR
French Polynesia        689     PF
Gabon   241     GA
Gambia  220     GM
Georgia 995     GE
Germany 49      DE
Ghana   233     GH
Gibraltar       350     GI
Greece  30      GR
Greenland       299     GL
Grenada 1-473   GD
Guam    1-671   GU
Guatemala       502     GT
Guernsey        44-1481 GG
Guinea  224     GN
Guinea-Bissau   245     GW
Guyana  592     GY
Haiti   509     HT
Honduras        504     HN
Hong Kong       852     HK
Hungary 36      HU
Iceland 354     IS
India   91      IN
Indonesia       62      ID
Iran    98      IR
Iraq    964     IQ
Ireland 353     IE
Isle of Man     44-1624 IM
Israel  972     IL
Italy   39      IT
Ivory Coast     225     CI
Jamaica 1-876   JM
Japan   81      JP
Jersey  44-1534 JE
Jordan  962     JO
Kazakhstan      7       KZ
Kenya   254     KE
Kiribati        686     KI
Kosovo  383     XK
Kuwait  965     KW
Kyrgyzstan      996     KG
Laos    856     LA
Latvia  371     LV
Lebanon 961     LB
Lesotho 266     LS
Liberia 231     LR
Libya   218     LY
Liechtenstein   423     LI
Lithuania       370     LT
Luxembourg      352     LU
Macau   853     MO
Macedonia       389     MK
Madagascar      261     MG
Malawi  265     MW
Malaysia        60      MY
Maldives        960     MV
Mali    223     ML
Malta   356     MT
Marshall Islands        692     MH
Mauritania      222     MR
Mauritius       230     MU
Mayotte 262     YT
Mexico  52      MX
Micronesia      691     FM
Moldova 373     MD
Monaco  377     MC
Mongolia        976     MN
Montenegro      382     ME
Montserrat      1-664   MS
Morocco 212     MA
Mozambique      258     MZ
Myanmar 95      MM
Namibia 264     NA
Nauru   674     NR
Nepal   977     NP
Netherlands     31      NL
Netherlands Antilles    599     AN
New Caledonia   687     NC
New Zealand     64      NZ
Nicaragua       505     NI
Niger   227     NE
Nigeria 234     NG
Niue    683     NU
North Korea     850     KP
Northern Mariana Islands        1-670   MP
Norway  47      NO
Oman    968     OM
Pakistan        92      PK
Palau   680     PW
Palestine       970     PS
Panama  507     PA
Papua New Guinea        675     PG
Paraguay        595     PY
Peru    51      PE
Philippines     63      PH
Pitcairn        64      PN
Poland  48      PL
Portugal        351     PT
Puerto Rico     1-787, 1-939    PR
Qatar   974     QA
Republic of the Congo   242     CG
Reunion 262     RE
Romania 40      RO
Russia  7       RU
Rwanda  250     RW
Saint Barthelemy        590     BL
Saint Helena    290     SH
Saint Kitts and Nevis   1-869   KN
Saint Lucia     1-758   LC
Saint Martin    590     MF
Saint Pierre and Miquelon       508     PM
Saint Vincent and the Grenadines        1-784   VC
Samoa   685     WS
San Marino      378     SM
Sao Tome and Principe   239     ST
Saudi Arabia    966     SA
Senegal 221     SN
Serbia  381     RS
Seychelles      248     SC
Sierra Leone    232     SL
Singapore       65      SG
Sint Maarten    1-721   SX
Slovakia        421     SK
Slovenia        386     SI
Solomon Islands 677     SB
Somalia 252     SO
South Africa    27      ZA
South Korea     82      KR
South Sudan     211     SS
Spain   34      ES
Sri Lanka       94      LK
Sudan   249     SD
Suriname        597     SR
Svalbard and Jan Mayen  47      SJ
Swaziland       268     SZ
Sweden  46      SE
Switzerland     41      CH
Syria   963     SY
Taiwan  886     TW
Tajikistan      992     TJ
Tanzania        255     TZ
Thailand        66      TH
Togo    228     TG
Tokelau 690     TK
Tonga   676     TO
Trinidad and Tobago     1-868   TT
Tunisia 216     TN
Turkey  90      TR
Turkmenistan    993     TM
Turks and Caicos Islands        1-649   TC
Tuvalu  688     TV
U.S. Virgin Islands     1-340   VI
Uganda  256     UG
Ukraine 380     UA
United Arab Emirates    971     AE
United Kingdom  44      GB
United States   1       US
Uruguay 598     UY
Uzbekistan      998     UZ
Vanuatu 678     VU
Vatican 379     VA
Venezuela       58      VE
Vietnam 84      VN
Wallis and Futuna       681     WF
Western Sahara  212     EH
Yemen   967     YE
Zambia  260     ZM
Zimbabwe        263     ZW
"""

data = input_data.strip().split('\n')

def generate_swift_enum(input_string):
    lines = input_string
    cases = []
    
    for line in lines:
        parts = line.split()
        code = parts[-1]  # 마지막 부분을 case로 사용
        cases.append(f"    case {code.lower()} = \"{code}\"")

    enum_definition = """enum ISOCode: String {\n"""
    enum_definition += "\n".join(cases)
    enum_definition += "\n}"

    print(f"enum result: {len(lines)}")
    
    return enum_definition

swift_enum_code = generate_swift_enum(data)
print(swift_enum_code)

print("=========================================")

# 데이터를 \n으로 구분하여 처리



def generate_countires_json(lines):
    result = []

    for line in lines:
        # 각 라인을 공백 기준으로 분리
        parts = line.split()
        count = len(parts)
        country_name, number, code = " ".join(parts[:count-2]), parts[count-2], parts[count-1]
        result.append({
                "name": country_name,
                "code": code,
                "number": f"+{number}"
        })
           

    print(f"json result: {len(result)}")
    # JSON 파일로 저장
    with open("countries.json", "w", encoding="utf-8") as file:
        json.dump(result, file, indent=4, ensure_ascii=False)

generate_countires_json(data)
