import Cocoa

//arrays

var beatles = ["john", "paul", "george", "ringo"]
let numbers = [1, 2, 3, 4, 5]
//array in swift can hold only one type of items, so the code below will fail
//beatles.append(1)

//how to create blank arrays
var names = Array<String>()
names.append("yuki")
names.append("lewis")
names.append("max")

//shorthand
var teams = [String]()
teams.append("redbull")
teams.append("alphatauri")
teams.append("ferrari")

//other methods
teams.count
teams.remove(at: 0)
teams.count
teams.removeAll()

names.sorted()
print(names)
names.sort()
print(names)

names.reverse()

//dictionary
let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

print(employee2["name"])
print(employee2["job"])
print(employee2["location"])

print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

heights.count

//set
let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(people)

//enum
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday

enum Weekend {
    case saturday, sunday
}

var holiday = Weekend.saturday
holiday = .sunday

print(holiday)

//Day4
//type annotation
let surname: String = "Lasso"
var score: Double = 0

print(score)

var albums: [String] = ["Red", "Fearless"]

var user: [String: String] = ["id": "@twostraws"]

var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])


enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light //type of style valuable is UIStyle
print(type(of: style))

//which to choose, type annotation or type inference
//It's best to choose annotation over inference when it's created but not assigned.
let username: String
username = "@harupong"
print(username)


//checkpoint2
let drivers = ["max", "lewis", "yuki", "fernando", "charles", "max", "yuki"]
print(drivers.count)
let celebs = Set(drivers)
print(celebs.count)

