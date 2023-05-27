import Cocoa

//day8 default parameter
func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

var array = [1, 2, 3]
array.removeAll()
array.removeAll(keepingCapacity: true)

//error handling
enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }

    if password == "12345" {
        throw PasswordError.obvious
    }

    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "123"

//do and try must come togetther
do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}

//checkpoint 4
enum CalculationError: Error {
    case outOfBounds, noRoot
}

func calculateIntSqrt(_ number: Int) throws -> Int {
    if number < 1 || number > 10000 {
        throw CalculationError.outOfBounds
    }
    
    for i in 1...100 {
        if i * i == number {
            return i
        }
    }
    throw CalculationError.noRoot
}

let number = 4

do {
    let intSqrt = try calculateIntSqrt(number)
    print("Interger square root of \(number) is \(intSqrt)")
} catch CalculationError.outOfBounds {
    print("The given number \(number) is out of bounds.")
} catch CalculationError.noRoot {
    print("There is no interger square root for the given number \(number).")
} catch {
    print("There was an error.")
}


