import Cocoa

var greeting = "Hello, playground"
greeting = "Hello, Xcode"

let bean = "kenya"

var playerName = "Rui"
print(playerName)

playerName = "Kei"
print(playerName)

playerName = "🏎️ Yuki 🏎️"
print(playerName)

let movieTitle = """
a day in
the life Of
apple engineer
"""

//string
print(movieTitle.count)
print(playerName.uppercased())
print(movieTitle.hasPrefix("a day"))

//int
let score = 10
let bigNumber = 100_000_000

var counter = 10
counter += 5 //becomes 15

counter.isMultiple(of: 3)

//float
let number = 0.1 + 0.2
print(number)

let a = 1
let b = 2.1
let c = Double(a) + b
let d = a + Int(b)

var rating = 5.0
rating *= 3

//boolean
let goodCoffee = true
var badCup = false
badCup.toggle() //makes it true

print(!goodCoffee) // ! can toggle boolean as well

//text concat and text interpolation
let id = "0" + "1" + "2" + "3" //inefficient

let name = "Lewis"
let job = "F1 driver"
let message = "Hi, my name is \(name) and I'm \(job)."
print(message)
