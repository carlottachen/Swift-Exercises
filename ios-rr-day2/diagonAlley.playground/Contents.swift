
// Part 1
let firstName = "Carlotta"
let lastName = "Chen"
var age = 29
let birthday = "March 22"
var wandLength = 12
let preferredHouse = "Slitherin"
let trait = "ambitious"
var tiredOfPotter = false

// Part 2
var goldVolume = 150.0
goldVolume -= 24.3
goldVolume -= 45
goldVolume += 300
goldVolume = goldVolume * 2
goldVolume = goldVolume * 0.9

// Part 3
struct owl{
    let blackBeak: Bool
    let feathers: String
}
var owl1 = owl(blackBeak: true, feathers: "black")

if owl1.blackBeak == true && owl1.feathers == "white" {
    print("This one's mine!")
} else {
    print("pass")
}

let sponsor = "The Holyhead Harpies"
if sponsor == "The Holyhead Harpies" {
    print("I will buy broom")
}

let student = "brave"

switch student {
case "cunning", "ambitious":
    print("Slytherin")
case "brave":
    print("Gryffindor")
case "loyal":
    print("Hufflepuff")
case "witty":
    print("Ravenclaw")
default:
    print("Try again")
}

// Part 4
let whizzbees = 12
func buyWhizz(whizzbees: Int, goldVolume: Double) -> Double {
    let galleons = whizzbees * 2
    var gold = goldVolume
    gold = gold - Double(galleons)
    return gold
}
goldVolume = buyWhizz(whizzbees: whizzbees, goldVolume: goldVolume)
print("Current: ", goldVolume)

let familySize = 5
func buyFrogs(familySize: Int, goldVolume: Double) -> Double{
    let totalCost = familySize * 3  // to buy each member 1 frog
    var gold = goldVolume
    if Double(totalCost) > gold {
        print("No thanks, I'm all set")
        return gold
    } else {
        gold = gold - Double(totalCost)
        print("We'll take the lot")
        return gold
    }
}
goldVolume = buyFrogs(familySize: familySize, goldVolume: goldVolume)
print("Current: ", goldVolume)

// Part 5
let bookPrices = [12, 15, 22, 10, 8, 17]

for price in bookPrices{
    if price > 15{
        print("This book is expensive!")
    } else {
        print("This book isn't too bad")
    }
}

let myGold = 30.23
func buyPixie(myGold: Double) {
    var totalPixiePuff = 0
    var gold = myGold
    
    while gold > 3 {
        totalPixiePuff += 1
        gold -= 3
    }
    print("I bought \(totalPixiePuff) Pixie Puffs")
}
buyPixie(myGold: myGold)
