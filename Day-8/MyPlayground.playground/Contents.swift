// Defining a function
// Default value for the function is being declared
func addValues (num1: Int, num2: Int = 10)-> Int {
    return num1 + num2
}
 
var a = addValues(num1: 5, num2: 10)
var b = addValues(num1: 6) // For num 2, the value will be declared as 10

print("\(a) , \(b)")

// Error handling
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


let string = "12345"

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
