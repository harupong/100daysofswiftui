import Cocoa

//day10 structs

struct Album {
    let title: String
    let artist: String
    let year: Int

    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()

// structs and mutating function
// default value for variables inside structs
struct Employee {
    let name: String
    var vacationRemaining: Int = 14

    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

var yuki = Employee(name: "Yuki Tsunoda", vacationRemaining: 50)
yuki.takeVacation(days: 20)
print(yuki.vacationRemaining)

var nick = Employee(name: "Nick De Vris")
nick.takeVacation(days: 20)
print(nick.vacationRemaining)

//getter and setter
struct Employee2 {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0

    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        set {
            vacationAllocated = vacationTaken + newValue
        }
        
    }
}

var sterling = Employee2(name: "Sterling Archer", vacationAllocated: 14)
sterling.vacationTaken += 4
sterling.vacationRemaining = 5
print(sterling.vacationAllocated)

//struct property observer
struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1

//didSet and willSet
struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        
        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue).")
        }
    }
}

var app = App()
app.contacts.append("Yuki Tsunoda")
app.contacts.append("Lando Norris")
app.contacts.append("Alex Albon")

//custom initilizer for structs

struct Player {
    let name: String
    let number: Int
    
    //by default, swift uses memberwise initilizer, but once the custom initilizer is created, only the latter is used
    init(name: String) {
        self.name = name
        self.number = Int.random(in: 1...99)
    }
}

//let player = Player(name: "George Russel", number: 66)
let player = Player(name: "George Russel")

