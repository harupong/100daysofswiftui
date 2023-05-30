import Cocoa

//day11 control access to data
struct BankAccount {
    private(set) var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var myAccount = BankAccount()
myAccount.deposit(amount: 100)

let withdraw = myAccount.withdraw(amount: 200)
if withdraw {
    print("Success")
} else {
    print("Fail")
}

//you can read "funds", but cannot write "funds" since this property is defined as "private(set)"
//myAccount.funds -= 1000
print(myAccount.funds)


//Static properties and methods
struct School {
    static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Yuki Tsunoda")
print(School.studentCount)

//actual use case: showing info, giving examples
struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

struct Employee {
    let username: String
    let password: String

    static let example = Employee(username: "cfederighi", password: "hairforceone")
}

//checkpoint6
struct Car {
    let model: String
    let seats: Int
    private(set) var gear = 1 {
        didSet {
            print("Current Gear: \(gear)")
        }
    }
    
    mutating func upGear(by number: Int) -> Bool {
        if gear + number < 10 {
            gear += number
            return true
        } else {
            return false
        }
    }
    
    mutating func downGear(by number: Int) -> Bool {
        if gear - number > 1 {
            gear -= number
            return true
        } else {
            return false
        }
    }
}

var tesla = Car(model: "Model S", seats: 4)
print(tesla)
tesla.upGear(by: 5)
tesla.downGear(by: 3)
tesla.downGear(by: 3)

