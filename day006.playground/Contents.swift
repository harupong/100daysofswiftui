import Cocoa

//day6 loop
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for platform in platforms {
    print("Swift works great on \(platform).")
}

for i in 1...12 {
    print("The \(i) times table:")

    for j in 1...12 {
        print("  \(j) x \(i) is \(j * i)")
    }

    print() //new line
}

for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)

let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for name in names {
    print("[CENSORED] is a secret agent")
}

//while loop
let id = Int.random(in: 0...100)

// create an integer to store our roll
var roll = 0

// carry on looping until we reach 20
while roll != 20 {
    // roll a new dice and print what it was
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

// if we're here it means the loop ended – we got a 20!
print("Critical hit!")

//break loop and continue
let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)

//checkpoint3 fizzbuzz

let fizz = 3
let buzz = 5

for i in 1...100 {
    if i.isMultiple(of: fizz) && i.isMultiple(of: buzz) {
        print("FizzBuzz")
    }
    else if i.isMultiple(of: fizz) {
        print("Fizz")
    }
    else if i.isMultiple(of: buzz) {
        print("Buzz")
    }
    else {
        print(i)
    }
}
