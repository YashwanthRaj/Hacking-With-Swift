import UIKit

// Optionals  datatype? is the datatype
let opposites = [ "Mario": "Wario", "Luigi": "Waluigi" ]
// In this case there is no value for Peaches, In thses cases we use optionals
let peachOpposite = opposites["Peach"]

// One way to represent the optional
if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")   // This line will only be run only when there is a value inside
}

var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}


// An example usecase of optionals
func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil
// print(square(number: number))  // This will throw an error as in function we have declared input parameter as an int not an optional

// Insted we use this
if let unwrappedNumber = number {
    print(square(number: unwrappedNumber))
}

// It is common to unwrap the optional in a constant with the same name.
if let number = number {
    print(square(number: number))
}

// Guard
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }

    print("\(number) x \(number) is \(number * number)")
}

// Illustration
var myVar: Int? = 3

if let unwrapped = myVar {
    print("Run if myVar has a value inside")  // Runs when there is a value inside the optional
}

guard let unwrapped = myVar else {
    print("Run if myVar doesn't have a value inside")  // Runs when there is no a value inside the optional
}

// nil coalescing operator
let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

let new = captains["Serenity"] ?? "N/A"   // This will run the code and return the value of serenity if its prensent or will return N/A if not found


let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"


struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous"
print(author)


let input = ""
let number1 = Int(input) ?? 0
print(number1)

// Multiple nil coalescing operator
let names = ["Arya", "Bran", "Robb", "Sansa"]

let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")


struct Book1 {
    let title: String
    let author1: String?
}

var book1: Book1? = nil
let author1 = book1?.author1?.first?.uppercased() ?? "A"
print(author)

// Function failure with optionals
enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

let user = (try? getUser(id: 23)) ?? "Anonymous"
print(user)


// challenge is this: write a function that accepts an optional array of integers, and returns one randomly. If the array is missing or empty, return a random number in the range 1 through 100.

