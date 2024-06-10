// Variable as a function
// This is a simple function, this accepts no parameters, doesnot return anything, and has no error handling functionlaity
func greetUser() {
    print("Hello my good man!!")
}

greetUser()  // Regular function call

var greetuservar = greetUser  //  Create a copy of the function to the variable
greetuservar() // Same functin call as above, but with variable name


// What we actually mean here is
var greetuser2: () -> Void = greetUser
// () denotes function. -> Meand return type. -> Void is a keyword which denotes nothing/empty


// Function definiton
func children (age int1:Int) -> String {
    if int1 > 10 {
        return "Greater Than 10"
    } else {
        return "Less than 10"
    }
}
let childernUser: (Int) -> String = children
let user = childernUser(30)   // For closures, the parameter name is not applicable
print(user)


// Closure
let greetuserVar = {
    print("Hello world!!")
}

greetuservar()

// Closures with parameters
// Because all the functionality of the code is inside the {}, the parameter and return type will also come inside the {}, unlike regular function
// The in denotes the end of the parameter and body
let greetvar = { (name: String) -> String in
    "Hello \(name)"
}

greetvar("Yash")


// Passing 1 function inside another
let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

// Function to have Suzane to be in first position
func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}

let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)

// The same above representation with closure
let captainFirstTeam1 = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})
print(captainFirstTeam1)

// Using short hand syntax the above code will be
let captainFirstTeam2 = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }

    return $0 < $1
}



// How to write functions that accept other functions as parameters
// A function to make array
func makeArray(size: Int, using generator: () -> Int) -> [Int] {    // Passing the function
    var numbers = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}

let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}

print(rolls)


func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls)

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}



doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}
