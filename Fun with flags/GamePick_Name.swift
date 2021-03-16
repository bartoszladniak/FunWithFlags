//
//  GamePick_Name.swift
//  Fun with flags
//
//  Created by Bartosz on 13/09/2020.
//  Copyright © 2020 Bartosz. All rights reserved.
//

import UIKit



class GamePick_Name: UIViewController {
    
    var flags: [String: String] = ["AF":"Afghanistan", "AL":"Albania", "DZ":"Algeria", "AS":"American Samoa", "AD":"Andorra", "AO":"Angola", "AI":"Anguilla", "AQ":"Antarctica", "AG":"Antigua and Barbuda", "AR":"Argentina", "AM":"Armenia", "AW":"Aruba", "AU":"Australia", "AT":"Austria", "AZ":"Azerbaijan", "BS":"Bahamas", "BH":"Bahrain", "BD":"Bangladesh", "BB":"Barbados", "BY":"Belarus", "BE":"Belgium", "BZ":"Belize", "BJ":"Benin", "BM":"Bermuda", "BT":"Bhutan", "BO":"Bolivia", "BQ":"Bonaire", "BA":"Bosnia and Herzegovina", "BW":"Botswana", "BR":"Brazil", "IO":"British Indian Ocean Territory", "BN":"Brunei Darussalam", "BG":"Bulgaria", "BF":"Burkina Faso", "BI":"Burundi", "CV":"Cabo Verde", "KH":"Cambodia", "CM":"Cameroon", "CA":"Canada", "KY":"Cayman Islands", "CF":"Central African Republic", "TD":"Chad", "CL":"Chile", "CN":"China", "CX":"Christmas Island", "CC":"Cocos Islands", "CO":"Colombia", "KM":"Comoros", "CD":"Congo (Democratic Republic)", "CG":"Congo", "CK":"Cook Islands", "CR":"Costa Rica", "HR":"Croatia", "CU":"Cuba", "CW":"Curaçao", "CY":"Cyprus", "CZ":"Czechia", "CI":"Côte d'Ivoire", "DK":"Denmark", "DJ":"Djibouti", "DM":"Dominica", "DO":"Dominican Republic", "EC":"Ecuador", "EG":"Egypt", "SV":"El Salvador", "GQ":"Equatorial Guinea", "ER":"Eritrea", "EE":"Estonia", "SZ":"Eswatini", "ET":"Ethiopia", "FK":"Falkland Islands", "FO":"Faroe Islands", "FJ":"Fiji", "FI":"Finland", "FR":"France", "GF":"French Guiana", "PF":"French Polynesia", "TF":"French Southern Territories", "GA":"Gabon", "GM":"Gambia", "GE":"Georgia", "DE":"Germany", "GH":"Ghana", "GI":"Gibraltar", "GR":"Greece", "GL":"Greenland", "GD":"Grenada", "GP":"Guadeloupe", "GU":"Guam", "GT":"Guatemala", "GG":"Guernsey", "GN":"Guinea", "GW":"Guinea-Bissau", "GY":"Guyana", "HT":"Haiti", "HM":"Heard Island and McDonald Islands", "VA":"Holy See", "HN":"Honduras", "HK":"Hong Kong", "HU":"Hungary", "IS":"Iceland", "IN":"India", "ID":"Indonesia", "IR":"Iran", "IQ":"Iraq", "IE":"Ireland", "IM":"Isle of Man", "IL":"Israel", "IT":"Italy", "JM":"Jamaica", "JP":"Japan", "JE":"Jersey", "JO":"Jordan", "KZ":"Kazakhstan", "KE":"Kenya", "KI":"Kiribati", "KR":"Korea (Republic)", "KW":"Kuwait", "KG":"Kyrgyzstan", "LV":"Latvia", "LB":"Lebanon", "LS":"Lesotho", "LR":"Liberia", "LY":"Libya", "LI":"Liechtenstein", "LT":"Lithuania", "LU":"Luxembourg", "MO":"Macao", "MG":"Madagascar", "MW":"Malawi", "MY":"Malaysia", "MV":"Maldives", "ML":"Mali", "MT":"Malta", "MH":"Marshall Islands", "MQ":"Martinique", "MR":"Mauritania", "MU":"Mauritius", "YT":"Mayotte", "MX":"Mexico", "FM":"Micronesia", "MD":"Moldova", "MC":"Monaco", "MN":"Mongolia", "ME":"Montenegro", "MS":"Montserrat", "MA":"Morocco", "MZ":"Mozambique", "MM":"Myanmar", "NA":"Namibia", "NR":"Nauru", "NP":"Nepal", "NL":"Netherlands", "NC":"New Caledonia", "NZ":"New Zealand", "NI":"Nicaragua", "NE":"Niger", "NG":"Nigeria", "NU":"Niue", "NF":"Norfolk Island", "MP":"Northern Mariana Islands", "NO":"Norway", "OM":"Oman", "PK":"Pakistan", "PW":"Palau", "PS":"Palestine, State of", "PA":"Panama", "PG":"Papua New Guinea", "PY":"Paraguay", "PE":"Peru", "PH":"Philippines", "PN":"Pitcairn", "PL":"Poland", "PT":"Portugal", "PR":"Puerto Rico", "QA":"Qatar", "MK":"Republic of North Macedonia", "RO":"Romania", "RU":"Russian Federation", "RW":"Rwanda", "RE":"Réunion", "BL":"Saint Barthélemy", "SH":"Saint Helena", "KN":"Saint Kitts and Nevis", "LC":"Saint Lucia", "MF":"Saint Martin (French part)", "PM":"Saint Pierre and Miquelon", "VC":"Saint Vincent and the Grenadines", "WS":"Samoa", "SM":"San Marino", "ST":"Sao Tome and Principe", "SA":"Saudi Arabia", "SN":"Senegal", "RS":"Serbia", "SC":"Seychelles", "SL":"Sierra Leone", "SG":"Singapore", "SX":"Sint Maarten (Dutch part)", "SK":"Slovakia", "SI":"Slovenia", "SB":"Solomon Islands", "SO":"Somalia", "ZA":"South Africa", "GS":"South Georgia and the South Sandwich Islands", "SS":"South Sudan", "ES":"Spain", "LK":"Sri Lanka", "SD":"Sudan", "SR":"Suriname", "SJ":"Svalbard and Jan Mayen", "SE":"Sweden", "CH":"Switzerland", "SY":"Syrian Arab Republic", "TW":"Taiwan", "TJ":"Tajikistan", "TZ":"Tanzania", "TH":"Thailand", "TL":"Timor-Leste", "TG":"Togo", "TK":"Tokelau", "TO":"Tonga", "TT":"Trinidad and Tobago", "TN":"Tunisia", "TR":"Turkey", "TM":"Turkmenistan", "TC":"Turks and Caicos Islands", "TV":"Tuvalu", "UG":"Uganda", "UA":"Ukraine", "AE":"United Arab Emirates", "GB":"United Kingdom", "UM":"United States Minor Outlying Islands", "US":"United States of America", "UY":"Uruguay", "UZ":"Uzbekistan", "VU":"Vanuatu", "VE":"Venezuela", "VN":"Viet Nam", "VG":"Virgin Islands (British)", "VI":"Virgin Islands (U.S.)", "WF":"Wallis and Futuna", "EH":"Western Sahara", "YE":"Yemen", "ZM":"Zambia", "ZW":"Zimbabwe", "AX":"Åland Islands"]
    private var correct_country_id = 0
    private var generated_numbers = [Int]()
    private var correct_button = 0
    private var POINTS = 0
    private var LOOPS = 0
    @IBOutlet weak var points: UILabel!
    @IBOutlet weak var flag_image: UIImageView!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var Reset_button: UIBarButtonItem!
    
    func set_button(button:Int , name:String){
        switch button {
        case 0:
            button1.setTitle(name, for: .normal)
            break;
        case 1:
            button2.setTitle(name, for: .normal)
            break;
        case 2:
            button3.setTitle(name, for: .normal)
            break;
        case 3:
            button4.setTitle(name, for: .normal)
            break;
        default:
            button4.setTitle("Error", for: .normal)
        }
    }
    func generate() {
        points.text = "Score: " + String(POINTS) + "/" + String(LOOPS)
        LOOPS=LOOPS+1;
        generated_numbers.removeAll()
        let country_number = Int.random(in: 0..<flags.count)
        correct_country_id = country_number
        let filename = Array(flags)[country_number].key;
        let country_name = Array(flags)[country_number].value;
        print("CORRECT Country number: ", country_number, " has key: ", filename, " and value: " , country_name)
        //Set flag of country_number
        flag_image.image = UIImage(named: filename.lowercased())
        //Set correct button
        let correct_position = Int.random(in:0..<4)
        correct_button = correct_position+1
        set_button(button: correct_position, name: country_name)
        generated_numbers.append(country_number)
        for n in 0..<4{
            if n==correct_position {
                continue
            }
            var another_country_number: Int = 0
            var exists = 0;
            repeat {
                exists = 0
                another_country_number = Int.random(in: 0..<flags.count)
                for num in generated_numbers
                {
                    if num == another_country_number{
                        exists = 1
                        break;
                    }
                }
            }
            while (exists==1 || another_country_number == country_number)
            print("INCORRECT Country number: ", another_country_number, " has key: ", Array(flags)[another_country_number].key, " and value: " , Array(flags)[another_country_number].value)

            generated_numbers.append(another_country_number)
            set_button(button: n, name: Array(flags)[another_country_number].value)
            
        }

        print("Generated: ", generated_numbers, "True: ", correct_country_id, " ")

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        generate()
    }

    @IBAction func reset_button(_ sender: Any) {
        POINTS = 0;
        LOOPS = 0;
        generate()
    }
    func validate(button: Int) -> Bool{
        if(correct_button == button)
        {
            print("Correct")
            POINTS+=1
            return true
        }
        else{
            print("Incorrect! pressed:", button, " And should click: ", correct_button, " which is country id: ", correct_country_id  )
            return false
        }
    }
    @IBAction func choice1(_ sender: Any) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.button1.backgroundColor = UIColor.clear //change it back to original color
            self.generate()

        }
        if self.validate(button: 1){
            self.button1.backgroundColor = UIColor.green
        }
        else
        {
            self.button1.backgroundColor = .red
        }
        }
    
    
    @IBAction func choice2(_ sender: Any) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.button2.backgroundColor = UIColor.clear //change it back to original color
            self.generate()

        }
        if self.validate(button: 2){
            self.button2.backgroundColor = UIColor.green
        }
        else
        {
            self.button2.backgroundColor = .red
        }
    }
    
    @IBAction func choice3(_ sender: Any) {

        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.button3.backgroundColor = UIColor.clear //change it back to original color
            self.generate()

        }
        if self.validate(button: 3){
            self.button3.backgroundColor = UIColor.green
        }
        else
        {
            self.button3.backgroundColor = .red
        }
    }
    
    @IBAction func choice4(_ sender: Any) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.button4.backgroundColor = UIColor.clear //change it back to original color
            self.generate()

        }
        if self.validate(button: 4){
            self.button4.backgroundColor = UIColor.green
        }
        else
        {
            self.button4.backgroundColor = .red
        }
    }
    
}
