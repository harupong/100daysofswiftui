import Cocoa

//day14 Optionals
let no1 = ["redbull":"Max", "Benz":"Lewis", "AT":"Yuki"]
let alpineNo1 = no1["alpine"] //"alpineNo1 is nil and treated as "optional" array

//this means the constant might or might not have an actual value
var number1: Int? = nil
var number2 = Int()
number1 == number2  //optional constant and empty constant is different in Swift

func square(num: Int) -> Int {
    num * num
}

//optional must be "unwrapped", to see whether it has values. You can do it like this:
if let unwrappedNumber1 = number1 {
    print(square(num: unwrappedNumber1)) //this does not print anything as "number1" is nil
}

//this prints out successfully as number1 has data
number1 = 5
if let unwrappedNumber2 = number1 {
    print(square(num: unwrappedNumber2))
}

//you can use "shadowing" to avoid creating new constant just for unwrapping.
number1 = 10
if let number1 = number1 {
    print(square(num: number1))
}

//Using "guard" to unwrap optionals. it is for "early return" from function
func printSqure(of number: Int?) {
    guard let number = number else {
        print("Missing input. Exiting...")
        return
    }
    
    print("\(number) x \(number) is \(number * number)")
}

printSqure(of: nil)

//unwrap optionals with nil coalescing
let teamLeader = ["RB":"Christian", "MB":"Toto", "AT":"Tost"]
let haasLeader = teamLeader["haas"] // this assigns nil and "haasLeader" becomes optional

//you can give defaults by using ??, nil coalescing
let alpineLeader = teamLeader["alpine"] ?? "N/A"

//nil coalescing is useful as it can be used with any kind of data types
let input = "hoge"
let number = Int(input) ?? 100 //Int casting failed, in other words, unwrapping failed, so nil coalescing was done and assigned 0
print(number)

//optional chaining. in this case, if drivers are empty array, it prints "No one"
let drivers = [String]()
let chosen = drivers.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

//by using optional chaining, you can avoid nesting "if". Nice simple syntax. Example
struct Book {
    let title: String
    let author: String?
}

var book: Book? = nil
let author = book?.author?.first?.uppercased() ?? "No Author"
print(author) //this prints out "No Auther" as the variable "book" is nil

//handle function failure with optionals
enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

//"try?" will check whether the function succeeds or not.
//In this case, the function throws an error, thus this if block prints out nothing.
if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

//you can conbile  nil coalescing with this. When doing so, it never fails(unlike above) so you do not need "if" to check.
let player = (try? getUser(id: 23)) ?? "Anonymous"
print("User: \(player)")

//checkpoint9
func returnNumberfromArray(from myArray: [Int]?) -> Int {
    return myArray?.randomElement() ?? Int.random(in: Range(1...100))
}

returnNumberfromArray(from: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
returnNumberfromArray(from: [Int]())
