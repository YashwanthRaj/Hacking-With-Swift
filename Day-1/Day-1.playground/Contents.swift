import UIKit

// Variable Declaration
var character1 = "Tyrion"
var character2 = "Jack"

// assigning new values to variable
character1 = "Piku"

// Constant Declaration
var devteam = "Office"

// Printing the values
print(character1)



// Strings
let filename = "paris.jpg"
let result = "⭐️ You win! ⭐️"

// you can even use other double quotes inside your string, as long as you’re careful to put a backslash before them so that Swift understands they are inside the string rather than ending the string
let quote = "Then he tapped a sign saying \"Believe\" and walked away."

// use """ if we have multi line strings
let movie = """
A day in
the life of an
Apple engineer
"""

// Counting the contets of a variable
print(result.count)

// Printing results in Uppercase
print(result.uppercased())



// Whole Numbers
let score = 10

// Basic mathematical Operations
let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2

var counter = 10
counter += 5 // Same as counter = counter + 5



// Floating point numbers for storing decimal/doubles numbers
let numbers = 1 // This is int
let number2 = 0.2 // This is double

// To perform operarions on different datatypes, we change it into one type.
let c = numbers + Int(number2)
let d = Double(numbers) + number2
print(c,d)
