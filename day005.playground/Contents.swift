import Cocoa

//conditions
let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going we don't need roads.")
}

if percentage < 85 {
    print("Sorry, you failed the test.")
}

if age >= 18 {
    print("You're eligible to vote")
}

var username = ""
if username.isEmpty {
    username = "Anonymous"
}
print("hello \(username)")

//multiple conditions AND
let temp = 25
if temp > 20 && temp < 30 {
    print("It's a nice day.")
}

//multiple conditions OR
let userAge = 14
let hasParentalConsent = true

if userAge >= 18 || hasParentalConsent {
    print("You can buy the game")
}

//conditions with enum
enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.scooter

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path…")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}

//switch with enum
enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.unknown

switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}

//switch with default to catch-all
let place = "Gotham"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
default:  //default comes last
    print("Who are you?")
}

//switch with fallthrough, which executes following case as well.
let day = 5
print("My true love gave to me…")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

//ternary condition
let nenrei = 17
let canVote = nenrei >= 18 ? "Yes" : "No"

let names = ["Jayne", "Kaylee", "Mal"]
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)

//ternary operator use case: with SwiftUI
let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")
