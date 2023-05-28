import Cocoa

//day9 closures
func greetUser() {
    print("Hi there!")
}
greetUser()

var greetCopy = greetUser
greetCopy()

//an anonymous function: create function and assign arguments inside a constant declaration
let sayHello = { (name: String) -> String in
    "Hi \(name)!"
}
sayHello("mike")

//closure types
//() part is where to assign arguments, -> Void part means it returns nothing
var greetUserCopy: () -> Void = greetUser

//names of the arguments are not part of function's type
func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
let user = data(1000)
print(user)

//real world use case
func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
var captainFirstTeam1 = team.sorted(by: captainFirstSorted)
print(captainFirstTeam1)


var captainFirstTeam2 = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})
print(team)
print(captainFirstTeam2)
