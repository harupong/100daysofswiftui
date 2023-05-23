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
