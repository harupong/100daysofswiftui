import Cocoa

//day12 class

//class and structs are similar, but they are both important in SwiftUI
class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10

//class inheritance
class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

//by using "final", class can be declared as "not allowed to be inherited"
final class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }

    override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

let yuki = Developer(hours: 4)
let tost = Manager(hours: 10)
yuki.work()
tost.work()

let lewis = Developer(hours: 12)
lewis.printSummary()

//class initilizer
class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertiable: Bool
    
    init(isElectric: Bool, isConvertiable: Bool) {
        self.isConvertiable = isConvertiable
        super.init(isElectric: isElectric) //initilizer for superclass is must  1
    }
}

let teslaX = Car(isElectric: true, isConvertiable: false)

//make a copy of class
class User {
    var username = "Anonymous"
}

var user1 = User()
var user2 = user1
user2.username = "Yuki"

//both print "Yuki" because the data("username") is copied between two variables
print(user1.username)
print(user2.username)

//with struct, data copy does not happen and we get different results
struct StructUser {
    var susername = "Anonymous"
}

var suser1 = StructUser()
var suser2 = suser1
suser2.susername = "Yuki"

print(suser1.susername)
print(suser2.susername)

//
class DiffUser {
    var username = "Anonymous"

    func copy() -> DiffUser {
        let diffuser = DiffUser()
        diffuser.username = username
        return diffuser
    }
}

var diffuser1 = DiffUser()
var diffuser2 = diffuser1.copy()
diffuser2.username = "Lewis"
print(diffuser1.username)
print(diffuser2.username)

//class deinitializer
class Player {
    let id: Int

    init(id: Int) {
        self.id = id
        print("Player \(id): I'm alive!")
    }

    deinit {
        print("Player \(id): I'm dead!")
    }
}

for i in 1...3 {
    let player = Player(id: i)
    print("Player \(player.id): I'm in control!")
}

//deinit with array
var players = [Player]()
for i in 1...3 {
    let player = Player(id: i)
    print("Player \(player.id): I'm in control!")
    players.append(player)
}

print("Loop is finished!")
players.removeAll()
print("Array is clear!")

//variables inside class
class Driver {
    var name = "Max"
}

let driver = Driver()
driver.name = "Checo"
print(driver.name)

var driver2 = Driver()
driver2.name = "Checo"
driver2 = Driver()
print(driver2.name)

//checkpoint7
class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("わんわん")
    }
}

class Cat: Animal {
    let isTame: Bool
    
    init(isTame: Bool, legs: Int) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak() {
        print("にゃーにゃー")
    }
}

final class Corgi: Dog {
    override func speak() {
        print("わんわんこーぎー")
    }
}

final class Poodle: Dog {
    override func speak() {
        print("わんわんぷーどる")
    }
}

final class Persian: Cat {
    override func speak() {
        print("にゃーにゃーぺるしゃ")
    }
}

final class Lion: Cat {
    override func speak() {
        print("にゃーにゃーらいおん")
    }
}

let taro = Poodle(legs: 4)
taro.speak()

let neko = Persian(isTame: false, legs: 4)
neko.speak()
neko.isTame
