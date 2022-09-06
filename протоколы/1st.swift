//
//  1st.swift
//  протоколы
//
//  Created by User on 10 Elul 5782.
//

class PickUp: CarProtocol {
    var marka: String = "Toyota"
    
    var model: String = "Tocama"
    
    var year: Int = 2021
    
    var country: String = "Mexico"
    
   
    init(marka: String, model: String, year: Int, country:String) {
        self.marka = marka
        self.model = model
        self.year = year
        self.country = country
        }
    
    func showinfo() {
        print("the \(marka)  \(model) , year of issue \(year)  manufactured in  \(country)")
          }
    }
class Djip: CarProtocol {
    var marka: String = "Jeep"
    
    var model: String = "Cherokee"
    
    var year: Int = 2019
    
    var country: String = "USA"
    init(marka: String, model: String, year: Int, country: String) {
        self.marka = marka
        self.model = model
        self.year = year
        self.country = country
    }
    
    func showinfo() {
        print("brand is \(marka) the model of the car is \(model), year of issue \(year), produced in  \(country)")
    }
}

class Crossover: CarProtocol {
    var marka: String = "Lada"
    
    var model: String = "Xcode"
    
    var year: Int = 2016
    
    var country: String = "Russia"
    init(marka:String, model:String, year: Int, country:String) {
        self.marka = marka
        self.model = model
        self.year = year
        self.country = country
    }
    
    func showinfo() {
        print("car brand is  \(marka) the model of car is \(model),  year of issue is \(year), manufactured in  \(country)")
    }
}



protocol CarProtocol {
var marka : String {get set }
var model: String{get set}
var year : Int {get set}
var country: String {get set}
func  showinfo()
}

var crossover1: Crossover = Crossover (marka:"Hyundai", model: "Kona electric", year: 2020, country: "South Korea")
crossover1.showinfo()
var crossover2: Crossover = Crossover (marka: "Hyundai", model: "Palisade", year: 2019, country: "South Korea")
crossover2.showinfo()
var crossover3: Crossover = Crossover (marka: "Kia", model: "Soul", year: 2022, country: "South Korea")
crossover3.showinfo()

var djip1 : Djip = Djip (marka:"Jeep", model: "Grand Commander", year: 2016, country: "China")
djip1.showinfo()
var djip2 : Djip = Djip (marka: "Jeep", model: "Renegade", year: 2022, country: "Italy")
djip2.showinfo()
var djip3 : Djip = Djip (marka: "Jeep", model: "Wrangler", year: 2016, country: "USA")
djip3.showinfo()

var pickup1: PickUp = PickUp(marka: "Ford Motor Company", model: "Ford Ranger", year: 2020, country:"North America" )
pickup1.showinfo()
var pickup2: PickUp = PickUp (marka: "Jac", model: "Shuailing", year: 2020, country: "China")
pickup2.showinfo()
var pickup3: PickUp = PickUp(marka: "Nissan", model: "Navara", year: 2006, country: "Argentina")
pickup3.showinfo()
