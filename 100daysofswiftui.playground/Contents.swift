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
        super.init(isElectric: isElectric)
    }
}

let teslaX = Car(isElectric: true, isConvertiable: false)

