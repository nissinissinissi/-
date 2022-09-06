


class juices: ProductsProtocol {
    var name: String = "Kiwi Juice"
    
    var price: Int = 15
    
    var expDate: Int = 15
    
    var weight: Int = 200
    
    init(name: String, price: Int, expDate: Int, weight: Int) {
        self.name = name
        self.price = price
        self.expDate = expDate
        self.weight = weight
        }
    
    func showinfo() {
        print("\(name) price is \(price) som , expiration date is: \(expDate) of September , weight is \(weight) gram ")
          }
    }
    

class food: ProductsProtocol {
var name: String = "Burger"

var price: Int = 156

var expDate: Int = 07

var weight: Int = 750
init (name: String, price:Int, expDate: Int, weight: Int) {
    self.name = name
    self.price = price
    self.expDate = expDate
    self.weight = weight
}


func showinfo() {
    print("\(name) price is \(price) som , expiration date is: \(expDate) .09.2022 weight \(weight) gramm")
    }
}


class chemicals : ProductsProtocol{
    var name: String = "Soap"
    
    var price: Int = 67
    
    var expDate: Int = 20/04/2024
    
    var weight: Int = 50
    
    init (name: String, price:Int, expDate: Int, weight: Int) {
        self.name = name
        self.price = price
        self.expDate = expDate
        self.weight = weight
    }
    func showinfo() {
        print("\(name) the price is \(price) the expiration date is \(expDate) and the weight is \(weight)")
    }
    
    
}

class equipments: ProductsProtocol {
    var name: String = "Electric  Scooter"
    
    var price: Int = 45000
    
    var expDate: Int = 0
    var garanty : Int = 5
    var weight: Int = 20
    
    init (name: String, price:Int, expDate: Int, weight: Int) {
        self.name = name
        self.price = price
        self.expDate = expDate
        self.weight = weight
    }
    func showinfo() {
        print("\(name) the price is \(price), the garanty is for \(garanty) years, and the weight is \(weight)")
    }
    
    }
protocol ProductsProtocol {
var name : String {get set }
var price : Int {get set}
var expDate : Int {get set}
var weight: Int {get set}
func  showinfo()
}


var Food1: food = food (name: "Pizza", price: 600, expDate: 7, weight: 400)
var Food2: food = food (name: "Risotto", price: 550, expDate: 07, weight: 500)
var Food3: food = food (name: "Kebab", price: 1200, expDate: 08, weight: 870)
var Food4: food = food (name: "Green Salad", price: 470, expDate: 07, weight: 350)
var Food5: food = food (name: "Steak", price: 2600, expDate: 08, weight: 1200)
//print(Food1.showinfo(), Food2.showinfo(), Food3.showinfo(), Food4.showinfo(), Food5.showinfo())
var drink1: juices = juices(name: "Pineapple", price: 30, expDate: 17, weight: 350)
var drink2 : juices = juices (name: "Coctail", price: 130, expDate: 10, weight: 350)
var drink3 : juices = juices (name: "Mango", price: 280, expDate: 18, weight: 550)
var drink4 : juices = juices (name: "Orange", price: 80, expDate: 23, weight: 350)
var drink5 : juices = juices (name: "Green Apple", price: 75, expDate: 25, weight: 500)
//print(drink1.showinfo(), drink2.showinfo(), drink3.showinfo(), drink4.showinfo(), drink5.showinfo())

var Items1: equipments = equipments (name: "Airpods", price: 15000, expDate: 0, weight: 200)
var items2 : equipments = equipments (name: "Apple", price: 76000, expDate: 0, weight: 400)
var items3: equipments = equipments (name: "Robot Vacuum", price: 65000, expDate: 0, weight:5000)
var items4: equipments = equipments(name: "microwave", price: 10000, expDate: 0, weight: 2000)
var Items5: equipments = equipments (name: "AC", price: 35000, expDate: 0, weight: 5200)
//print(Items1.showinfo(), items2.showinfo(), items3.showinfo(), items4.showinfo(), Items5.showinfo())

var chemical1: chemicals = chemicals (name: "Sponge", price: 20, expDate: 0, weight: 10)
var chemical2: chemicals = chemicals (name: "Shampoo", price: 70, expDate: 12, weight: 450)
var chemical3: chemicals = chemicals (name: "Chlorine", price: 270, expDate: 31, weight: 600)
var chemical4: chemicals = chemicals (name: "Balm", price: 590, expDate: 24, weight: 500)
var chemical5: chemicals = chemicals (name: "Soap", price: 58, expDate: 30, weight: 360)
//print(chemical1.showinfo(), chemical2.showinfo(), chemical3.showinfo(), chemical4.showinfo(), chemical5.showinfo())


var total = 0.0
var totalString = ""
var delivery = 0


func countorder (items:String) {
switch items {
case "Burger": total += 156
case" Kiwi " : total += 15
case"Soap" : total += 67
case"Electric scooter" : total += 45000
case "Shampoo": total += 70
case "Orange" : total += 80
default:
print("введите правильно")
   var repeatChoice = readLine()!
 
totalString += "\(items)  "
countorder(items: repeatChoice)
}
}
func repeatToBuy () {
print (" 1.Бургер, 2.Соки 3.Техника 4.Мыломойка 5.шампунь 6.Апельсиновый сок")
countorder(items: choice)
}
func endOfBuying(){
print ("\(totalString) tovary kupleny na summu \(total) + delivery \(total + 500 )  ")

}
func greeting() {}
print( "Здравствуйте, что бы вы хотели заказать?")
print("У нас есть : 1.Бургер, 2.Сок Киви 3.Техника 4.Мыломойка 5.шампунь 6.Апельсиновый сок")

var choice = readLine()!
  countorder(items: choice)

  print("Do u want anything else?")
var add = readLine()!
if add == "Yes" {
repeatToBuy()
var repeated = readLine()
countorder(items: choice)
}else{
endOfBuying()
}
greeting()
print ("На какое имя оформлять ваш заказ?")
var name = readLine()

var date :Int = 0
date = 14
var time : Int = 0
time = 21
print ("Дата заказа: \(date) .09.2022")
print ("время заказа: \(time) : 30")

