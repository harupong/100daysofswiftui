import Cocoa

//day7 function
func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

showWelcome()

func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 12, end:20) //you need to give both names and values when passing arguments to function

//return values
let root = sqrt(169)
print(root)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

//this one line can return either true or false
func isStringsSame(str1: String, str2: String) -> Bool {
    return str1.sorted()  == str2.sorted()
}

isStringsSame(str1: "hoge", str2: "ohg")

//return can be used to exit from a function as well
func exitEarly(number: Int) {
    if number == 1 {
        return
    }
    print(number)
}

exitEarly(number: 2)

//SwiftUI uses ternary operator quite a lot
//both of the two func below mean the same.
func greet(name: String) -> String {
    if name == "Taylor Swift" {
        return "Oh wow!"
    } else {
        return "Hello, \(name)"
    }
}

func greeting(name: String) -> String {
    name == "Taylor Swift" ? "Oh wow!" : "Hello, \(name)"
}

greet(name: "Lewis Hamilton")
greeting(name: "Taylor Swift")

//use tuple to return multiple values
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

//since names in returned tuple are declared beforehand, code body can be simplified
func getUserName() -> (firstName: String, lastName: String) {
    ("Taylor", "Swift")
}
let username = getUserName()
print("Name: \(username.firstName) \(username.lastName)")

//assign two constants at once
var (firstName, lastName) = getUser()
print("Name: \(firstName) \(lastName)")

//OR you can omit certain part by using underscore
var (_, lastname) = getUser()
print("Name: \(lastname)")

//naming parameter "_" makes "unamed parameter", which can be called w/o specifing name.
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let torf = isUppercase(string)

//two names can be declared for one argument, former is to be specified externally, latter is to be used inside a function code.
//In the code below, there is only one argument whose type is Int. the name "for" is to be used when calling the funtion, the name "number" is used inside function.
func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)
