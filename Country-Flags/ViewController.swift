//
//  ViewController.swift
//  Country-Flags
//
//  Created by NETBIZ on 04/10/18.
//  Copyright © 2018 Netbiz.in. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var countryArray = [[String: String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let url = Bundle.main.url(forResource: "counrtyList", withExtension: "plist")!
        let plistData = try! Data(contentsOf: url)
        countryArray = try! PropertyListSerialization.propertyList(from: plistData, options: [], format: nil) as! [[String : String]]

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getFlagIcon(initials: Any) -> UIImage {
        let flag = initials as? String
        var flagIcon:UIImage!
        switch flag {
        case "AF": // Afghanistan
            flagIcon = UIImage(named: "afghanistan")
            break
        case "AL": // Albania
            flagIcon = UIImage(named: "albania")
            break
        case "DZ": // Algeria
            flagIcon = UIImage(named: "algeria")
            break
        case "AX": // Aland Islands
            flagIcon = UIImage(named: "aland-islands")
            break
        case "AS": // American Samoa
            flagIcon = UIImage(named: "american-samoa")
            break
        case "AI": // Anguilla
            flagIcon = UIImage(named: "anguilla")
            break
        case "AD": // Andorra
            flagIcon = UIImage(named: "andorra")
            break
        case "AO": // Angola
            flagIcon = UIImage(named: "angola")
            break
        case "AN": // Antilles - Netherlands
            flagIcon = UIImage(named: "antilles-netherlands")
            break
        case "AG": // Antigua and Barbuda
            flagIcon = UIImage(named: "antigua-and-barbuda")
            break
        case "AQ": // Antarctica
            flagIcon = UIImage(named: "antarctica")
            break
        case "AR": // Argentina
            flagIcon = UIImage(named: "argentina")
            break
        case "AM": // Armenia
            flagIcon = UIImage(named: "armenia")
            break
        case "AU": // Australia
            flagIcon = UIImage(named: "australia")
            break
        case "AT": // Austria
            flagIcon = UIImage(named: "austria")
            break
        case "AW": // Aruba
            flagIcon = UIImage(named: "aruba")
            break
        case "AZ": // Azerbaijan
            flagIcon = UIImage(named: "azerbaijan")
            break
        case "BA": // Bosnia and Herzegovina
            flagIcon = UIImage(named: "bosnia-and-herzegovina")
            break
        case "BB": // Barbados
            flagIcon = UIImage(named: "barbados")
            break
        case "BD": // Bangladesh
            flagIcon = UIImage(named: "bangladesh")
            break
        case "BE": // Belgium
            flagIcon = UIImage(named: "belgium")
            break
        case "BF": // Burkina Faso
            flagIcon = UIImage(named: "burkina-faso")
            break
        case "BG": // Bulgaria
            flagIcon = UIImage(named: "bulgaria")
            break
        case "BH": // Bahrain
            flagIcon = UIImage(named: "bahrain")
            break
        case "BI": // Burundi
            flagIcon = UIImage(named: "burundi")
            break
        case "BJ": // Benin
            flagIcon = UIImage(named: "benin")
            break
        case "BM": // Bermuda
            flagIcon = UIImage(named: "bermuda")
            break
        case "BN": // Brunei Darussalam
            flagIcon = UIImage(named: "brunei")
            break
        case "BO": // Bolivia
            flagIcon = UIImage(named: "bolivia")
            break
        case "BR": // Brazil
            flagIcon = UIImage(named: "brazil")
            break
        case "BS": // Bahamas
            flagIcon = UIImage(named: "bahamas")
            break
        case "BT": // Bhutan
            flagIcon = UIImage(named: "bhutan")
            break
        case "BV": // Bouvet Island
            flagIcon = UIImage(named: "norway")
            break
        case "BW": // Botswana
            flagIcon = UIImage(named: "botswana")
            break
        case "BY": // Belarus
            flagIcon = UIImage(named: "belarus")
            break
        case "BZ": // Belize
            flagIcon = UIImage(named: "belize")
            break
        case "KH": // Cambodia
            flagIcon = UIImage(named: "cambodia")
            break
        case "CM": // Cameroon
            flagIcon = UIImage(named: "cameroon")
            break
        case "CA": // Canada
            flagIcon = UIImage(named: "canada")
            break
        case "CV": // Cape Verde
            flagIcon = UIImage(named: "cape-verde")
            break
        case "CF": // Central African Republic
            flagIcon = UIImage(named: "central-african-republic")
            break
        case "TD": // Chad
            flagIcon = UIImage(named: "chad")
            break
        case "CL": // Chile
            flagIcon = UIImage(named: "chile")
            break
        case "CN": // China
            flagIcon = UIImage(named: "china")
            break
        case "CX": // Christmas Island
            flagIcon = UIImage(named: "christmas-island")
            break
        case "CC": // Cocos (Keeling) Islands
            flagIcon = UIImage(named: "cocos-island")
            break
        case "CO": // Colombia
            flagIcon = UIImage(named: "colombia")
            break
        case "CG": // Congo
            flagIcon = UIImage(named: "republic-of-the-congo")
            break
        case "CI": // Cote D'Ivoire (Ivory Coast)
            flagIcon = UIImage(named: "ivory-coast")
            break
        case "CK": // Cook Islands
            flagIcon = UIImage(named: "cook-islands")
            break
        case "CR": // Costa Rica
            flagIcon = UIImage(named: "costa-rica")
            break
        case "HR": // Croatia (Hrvatska)
            flagIcon = UIImage(named: "croatia")
            break
        case "CU": // Cuba
            flagIcon = UIImage(named: "cuba")
            break
        case "CY": // Cyprus
            flagIcon = UIImage(named: "cyprus")
            break
        case "CZ": // Czech Republic
            flagIcon = UIImage(named: "czech-republic")
            break
        case "CD": // Democratic Republic of the Congo
            flagIcon = UIImage(named: "democratic-republic-of-congo")
            break
        case "DJ": // Djibouti
            flagIcon = UIImage(named: "djibouti")
            break
        case "DK": // Denmark
            flagIcon = UIImage(named: "denmark")
            break
        case "DM": // Dominica
            flagIcon = UIImage(named: "dominica")
            break
        case "DO": // Dominican Republic
            flagIcon = UIImage(named: "dominican-republic")
            break
        case "EC": // Ecuador
            flagIcon = UIImage(named: "ecuador")
            break
        case "EG": // Egypt
            flagIcon = UIImage(named: "egypt")
            break
        case "SV": // El Salvador
            flagIcon = UIImage(named: "el-salvador")
            break
        case "EE": // Estonia
            flagIcon = UIImage(named: "estonia")
            break
        case "GQ": // Equatorial Guinea
            flagIcon = UIImage(named: "equatorial-guinea")
            break
        case "ER": // Eritrea
            flagIcon = UIImage(named: "eritrea")
            break
        case "ET": // Ethiopia
            flagIcon = UIImage(named: "ethiopia")
            break
        case "FI": // Finland
            flagIcon = UIImage(named: "finland")
            break
        case "FJ": // Fiji
            flagIcon = UIImage(named: "fiji")
            break
        case "FK": // Falkland Islands (Malvinas)
            flagIcon = UIImage(named: "falkland-islands")
            break
        case "FM": // Federated States of Micronesia
            flagIcon = UIImage(named: "micronesia")
            break
        case "FO": // Faroe Islands
            flagIcon = UIImage(named: "faroe-islands")
            break
        case "FR": // France
            flagIcon = UIImage(named: "france")
            break
        case "FX": // France, Metropolitan
            flagIcon = UIImage(named: "france")
            break
        case "GF": // French Guiana
            flagIcon = UIImage(named: "french-guiana")
            break
        case "PF": // French Polynesia
            flagIcon = UIImage(named: "french-polynesia")
            break
        case "GA": // Gabon
            flagIcon = UIImage(named: "gabon")
            break
        case "GM": // Gambia
            flagIcon = UIImage(named: "gambia")
            break
        case "DE": // Germany
            flagIcon = UIImage(named: "germany")
            break
        case "GH": // Ghana
            flagIcon = UIImage(named: "ghana")
            break
        case "GI": // Gibraltar
            flagIcon = UIImage(named: "gibraltar")
            break
        case "GB": // Great Britain
            flagIcon = UIImage(named: "united-kingdom")
            break
        case "GD": // Grenada
            flagIcon = UIImage(named: "grenada")
            break
        case "GE": // Georgia
            flagIcon = UIImage(named: "georgia")
            break
        case "GR": // Greece
            flagIcon = UIImage(named: "greece")
            break
        case "GL": // Greenland
            flagIcon = UIImage(named: "greenland")
            break
        case "GN": // Guinea
            flagIcon = UIImage(named: "guinea")
            break
        case "GP": // Guadeloupe
            flagIcon = UIImage(named: "guadeloupe")
            break
        case "GS": // South Georgia and South Sandwich Islands
            flagIcon = UIImage(named: "georgia-sandwich-islands")
            break
        case "GT": // Guatemala
            flagIcon = UIImage(named: "guatemala")
            break
        case "GU": // Guam
            flagIcon = UIImage(named: "guam")
            break
        case "GW": // Guinea-Bissau
            flagIcon = UIImage(named: "guinea-bissau")
            break
        case "GY": // Guyana
            flagIcon = UIImage(named: "guyana")
            break
        case "HK": // Hong Kong
            flagIcon = UIImage(named: "hong-kong")
            break
        case "HM": // Heard Island and McDonald Islands
            flagIcon = UIImage(named: "australia")
            break
        case "HN": // Honduras
            flagIcon = UIImage(named: "honduras")
            break
        case "HT": // Haiti
            flagIcon = UIImage(named: "haiti")
            break
        case "HU": // Hungary
            flagIcon = UIImage(named: "hungary")
            break
        case "ID": // Indonesia
            flagIcon = UIImage(named: "indonesia")
            break
        case "IE": // Ireland
            flagIcon = UIImage(named: "ireland")
            break
        case "IL": // Israel
            flagIcon = UIImage(named: "israel")
            break
        case "IN": // India
            flagIcon = UIImage(named: "india")
            break
        case "IO": // British Indian Ocean Territory
            flagIcon = UIImage(named: "british-indian-ocean-territory")
            break
        case "IQ": // Iraq
            flagIcon = UIImage(named: "iraq")
            break
        case "IR": // Iran
            flagIcon = UIImage(named: "iran")
            break
        case "IT": // Italy
            flagIcon = UIImage(named: "italy")
            break
        case "JM": // Jamaica
            flagIcon = UIImage(named: "jamaica")
            break
        case "JO": // Jordan
            flagIcon = UIImage(named: "jordan")
            break
        case "JP": // Japan
            flagIcon = UIImage(named: "japan")
            break
        case "KE": // Kenya
            flagIcon = UIImage(named: "kenya")
            break
        case "KG": // Kyrgyzstan
            flagIcon = UIImage(named: "kyrgyzstan")
            break
        case "KI": // Kiribati
            flagIcon = UIImage(named: "kiribati")
            break
        case "KM": // Comoros
            flagIcon = UIImage(named: "comoros")
            break
        case "KN": // Saint Kitts and Nevis
            flagIcon = UIImage(named: "saint-kitts-and-nevis")
            break
        case "KP": // Korea (North)
            flagIcon = UIImage(named: "north-korea")
            break
        case "KR": // Korea (South)
            flagIcon = UIImage(named: "south-korea")
            break
        case "KW": // Kuwait
            flagIcon = UIImage(named: "kuwait")
            break
        case "KY": // Cayman Islands
            flagIcon = UIImage(named: "cayman-islands")
            break
        case "KZ": // Kazakhstan
            flagIcon = UIImage(named: "kazakhstan")
            break
        case "LA": // Laos
            flagIcon = UIImage(named: "laos")
            break
        case "LB": // Lebanon
            flagIcon = UIImage(named: "lebanon")
            break
        case "LC": // Saint Lucia
            flagIcon = UIImage(named: "st-lucia")
            break
        case "LI": // Liechtenstein
            flagIcon = UIImage(named: "liechtenstein")
            break
        case "LK": // Sri Lanka
            flagIcon = UIImage(named: "sri-lanka")
            break
        case "LR": // Liberia
            flagIcon = UIImage(named: "liberia")
            break
        case "LS": // Lesotho
            flagIcon = UIImage(named: "lesotho")
            break
        case "LT": // Lithuania
            flagIcon = UIImage(named: "lithuania")
            break
        case "LU": // Luxembourg
            flagIcon = UIImage(named: "luxembourg")
            break
        case "LV": // Latvia
            flagIcon = UIImage(named: "latvia")
            break
        case "LY": // Libya
            flagIcon = UIImage(named: "libya")
            break
        case "MK": // Macedonia
            flagIcon = UIImage(named: "republic-of-macedonia")
            break
        case "MO": // Macao
            flagIcon = UIImage(named: "macao")
            break
        case "MG": // Madagascar
            flagIcon = UIImage(named: "madagascar")
            break
        case "MY": // Malaysia
            flagIcon = UIImage(named: "malaysia")
            break
        case "ML": // Mali
            flagIcon = UIImage(named: "mali")
            break
        case "MW": // Malawi
            flagIcon = UIImage(named: "malawi")
            break
        case "MR": // Mauritania
            flagIcon = UIImage(named: "mauritania")
            break
        case "MH": // Marshall Islands
            flagIcon = UIImage(named: "marshall-island")
            break
        case "MQ": // Martinique
            flagIcon = UIImage(named: "martinique")
            break
        case "MU": // Mauritius
            flagIcon = UIImage(named: "mauritius")
            break
        case "YT": // Mayotte
            flagIcon = UIImage(named: "mayotte")
            break
        case "MT": // Malta
            flagIcon = UIImage(named: "malta")
            break
        case "MX": // Mexico
            flagIcon = UIImage(named: "mexico")
            break
        case "MA": // Morocco
            flagIcon = UIImage(named: "morocco")
            break
        case "MC": // Monaco
            flagIcon = UIImage(named: "monaco")
            break
        case "MD": // Moldova
            flagIcon = UIImage(named: "moldova")
            break
        case "ME": // Montenegro
            flagIcon = UIImage(named: "montenegro")
            break
        case "MN": // Mongolia
            flagIcon = UIImage(named: "mongolia")
            break
        case "MM": // Myanmar
            flagIcon = UIImage(named: "myanmar")
            break
        case "MP": // Northern Mariana Islands
            flagIcon = UIImage(named: "northern-marianas-islands")
            break
        case "MS": // Montserrat
            flagIcon = UIImage(named: "montserrat")
            break
        case "MV": // Maldives
            flagIcon = UIImage(named: "maldives")
            break
        case "MZ": // Mozambique
            flagIcon = UIImage(named: "mozambique")
            break
        case "NA": // Namibia
            flagIcon = UIImage(named: "namibia")
            break
        case "NC": // New Caledonia
            flagIcon = UIImage(named: "new-caledonia")
            break
        case "NE": // Niger
            flagIcon = UIImage(named: "niger")
            break
        case "NF": // Norfolk Island
            flagIcon = UIImage(named: "norfolk-island")
            break
        case "NG": // Nigeria
            flagIcon = UIImage(named: "nigeria")
            break
        case "NI": // Nicaragua
            flagIcon = UIImage(named: "nicaragua")
            break
        case "NL": // Netherlands
            flagIcon = UIImage(named: "netherlands")
            break
        case "NO": // Norway
            flagIcon = UIImage(named: "norway")
            break
        case "NP": // Nepal
            flagIcon = UIImage(named: "nepal")
            break
        case "NR": // Nauru
            flagIcon = UIImage(named: "nauru")
            break
        case "NU": // Niue
            flagIcon = UIImage(named: "niue")
            break
        case "NZ": //  New Zealand
            flagIcon = UIImage(named: "new-zealand")
            break
        case "OM": // Oman
            flagIcon = UIImage(named: "oman")
            break
        case "PA": // Panama
            flagIcon = UIImage(named: "panama")
            break
        case "PE": // Peru
            flagIcon = UIImage(named: "peru")
            break
        case "PG": // Papua New Guinea
            flagIcon = UIImage(named: "papua-new-guinea")
            break
        case "PH": // Philippines
            flagIcon = UIImage(named: "philippines")
            break
        case "PK": // Pakistan
            flagIcon = UIImage(named: "pakistan")
            break
        case "PL": // Poland
            flagIcon = UIImage(named: "poland")
            break
        case "PM": // Saint Pierre and Miquelon
            flagIcon = UIImage(named: "st-pierre-and-miquelon")
            break
        case "PN": // Pitcairn
            flagIcon = UIImage(named: "pitcairn-islands")
            break
        case "PR": // Puerto Rico
            flagIcon = UIImage(named: "puerto-rico")
            break
        case "PS": // Palestinian Territory
            flagIcon = UIImage(named: "palestine")
            break
        case "PT": // Portugal
            flagIcon = UIImage(named: "portugal")
            break
        case "PW": // Palau
            flagIcon = UIImage(named: "palau")
            break
        case "PY": // Paraguay
            flagIcon = UIImage(named: "paraguay")
            break
        case "QA": // Qatar
            flagIcon = UIImage(named: "qatar")
            break
        case "RE": // Réunion
            flagIcon = UIImage(named: "france")
            break
        case "RO": // Romania
            flagIcon = UIImage(named: "romania")
            break
        case "RU": // Russian Federation
            flagIcon = UIImage(named: "russia")
            break
        case "RW": // Rwanda
            flagIcon = UIImage(named: "rwanda")
            break
        case "SA": // Saudi Arabia
            flagIcon = UIImage(named: "saudi-arabia")
            break
        case "WS": // Samoa
            flagIcon = UIImage(named: "samoa")
            break
        case "SH": // Saint Helena
            flagIcon = UIImage(named: "st-helena")
            break
        case "VC": //Saint Vincent and the Grenadines
            flagIcon = UIImage(named: "st-vincent-and-the-grenadines")
            break
        case "SM": // San Marino
            flagIcon = UIImage(named: "san-marino")
            break
        case "ST": // Sao Tome and Principe
            flagIcon = UIImage(named: "sao-tome-and-prince")
            break
        case "SN": // Senegal
            flagIcon = UIImage(named: "senegal")
            break
        case "RS": // Serbia
            flagIcon = UIImage(named: "serbia")
            break
        case "SC": // Seychelles
            flagIcon = UIImage(named: "seychelles")
            break
        case "SL": // Sierra Leone
            flagIcon = UIImage(named: "sierra-leone")
            break
        case "SG": // Singapore
            flagIcon = UIImage(named: "singapore")
            break
        case "SK": // Slovakia
            flagIcon = UIImage(named: "slovakia")
            break
        case "SI": // Slovenia
            flagIcon = UIImage(named: "slovenia")
            break
        case "SB": // Solomon Islands
            flagIcon = UIImage(named: "solomon-islands")
            break
        case "SO": // Somalia
            flagIcon = UIImage(named: "somalia")
            break
        case "ZA": // South Africa
            flagIcon = UIImage(named: "south-africa")
            break
        case "ES": // Spain
            flagIcon = UIImage(named: "spain")
            break
        case "SD": // Sudan
            flagIcon = UIImage(named: "sudan")
            break
        case "SR": // Suriname
            flagIcon = UIImage(named: "suriname")
            break
        case "SJ": // Svalbard and Jan Mayen
            flagIcon = UIImage(named: "norway")
            break
        case "SE": // Sweden
            flagIcon = UIImage(named: "sweden")
            break
        case "CH": // Switzerland
            flagIcon = UIImage(named: "switzerland")
            break
        case "SY": // Syria
            flagIcon = UIImage(named: "syria")
            break
        case "SU": //Soviet Union
            flagIcon = UIImage(named: "soviet-union")
            break
        case "SZ": // Swaziland
            flagIcon = UIImage(named: "swaziland")
            break
        case "TW": // Taiwan
            flagIcon = UIImage(named: "taiwan")
            break
        case "TZ": // Tanzania
            flagIcon = UIImage(named: "tanzania")
            break
        case "TJ": // Tajikistan
            flagIcon = UIImage(named: "tajikistan")
            break
        case "TH": // Thailand
            flagIcon = UIImage(named: "thailand")
            break
        case "TL": // Timor-Leste (East Timor)
            flagIcon = UIImage(named: "east-timor")
            break
        case "TG": // Togo
            flagIcon = UIImage(named: "togo")
            break
        case "TK": // Tokelau
            flagIcon = UIImage(named: "tokelau")
            break
        case "TO": // Tonga
            flagIcon = UIImage(named: "tonga")
            break
        case "TT": // Trinidad and Tobago
            flagIcon = UIImage(named: "trinidad-and-tobago")
            break
        case "TN": // Tunisia
            flagIcon = UIImage(named: "tunisia")
            break
        case "TR": // Turkey
            flagIcon = UIImage(named: "turkey")
            break
        case "TM": // Turkmenistan
            flagIcon = UIImage(named: "turkmenistan")
            break
        case "TC": // Turks and Caicos Islands
            flagIcon = UIImage(named: "turks-and-caicos")
            break
        case "TV": // Tuvalu
            flagIcon = UIImage(named: "tuvalu")
            break
        case "UA": // Ukraine
            flagIcon = UIImage(named: "ukraine")
            break
        case "UG": // Uganda
            flagIcon = UIImage(named: "uganda")
            break
        case "AE": // United Arab Emirates
            flagIcon = UIImage(named: "united-arab-emirates")
            break
        case "UK": // United Kingdom
            flagIcon = UIImage(named: "united-kingdom")
            break
        case "US": // United States
            flagIcon = UIImage(named: "united-states")
            break
        case "UM": // United States Minor Outlying Islands
            flagIcon = UIImage(named: "united-states")
            break
        case "UR": // Uruguay
            flagIcon = UIImage(named: "uruguay")
            break
        case "UZ": // Uzbekistan
            flagIcon = UIImage(named: "uzbekistan")
            break
        case "VU": // Vanuatu
            flagIcon = UIImage(named: "vanuatu")
            break
        case "VA": // Vatican City State
            flagIcon = UIImage(named: "vatican-city")
            break
        case "VZ": // Venezuela
            flagIcon = UIImage(named: "venezuela")
            break
        case "VG": // Virgin Islands (British)
            flagIcon = UIImage(named: "british-virgin-islands")
            break
        case "VI": // Virgin Islands (US)
            flagIcon = UIImage(named: "virgin-islands")
            break
        case "VN": // Vietnam
            flagIcon = UIImage(named: "vietnam")
            break
        case "WF": // Wallis and Futuna
            flagIcon = UIImage(named: "wallis-and-futuna")
            break
        case "EH": // Western Sahara
            flagIcon = UIImage(named: "western-sahara")
            break
        case "YE": // Yemen
            flagIcon = UIImage(named: "yemen")
            break
        case "YU": // Yugoslavia
            flagIcon = UIImage(named: "yugoslavia")
            break
        case "ZM": // Zambia
            flagIcon = UIImage(named: "zambia")
            break
        case "ZR": // Zaire
            flagIcon = UIImage(named: "zaire")
            break
        case "ZW": // Zimbabwe
            flagIcon = UIImage(named: "zimbabwe")
            break
            
        default:
            flagIcon = UIImage(named: "unknown")
            break
        }
        
        
        return flagIcon
    }
    


}
extension ViewController:UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countryArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "country-cell")
        
        let obj = countryArray[indexPath.row] as NSDictionary
        
        cell?.textLabel?.text = obj.value(forKey: "name") as? String
        cell?.detailTextLabel?.text = obj.value(forKey: "initials") as? String
        cell?.imageView?.image = self.getFlagIcon(initials: cell?.detailTextLabel?.text as Any)
        
        return cell!
    }
}
