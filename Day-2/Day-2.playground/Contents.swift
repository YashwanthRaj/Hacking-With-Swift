import UIKit

// Boolean
let dogs = true
let cats = false

var authenticated = false
authenticated = !authenticated //The use of ! to change the value
print(authenticated)

var gameOver = false
print(gameOver)
gameOver.toggle() // This function also changed the value
print(gameOver)


// Joining Strings Together
var a = "Hello, "
var b = "world!!"
var c = a + b
print(c)

var d = a + b + ", Welcome to my page!"
print(d)

// Joining different variables in a string
let age = 21
let weight = 65.89
let sentence = "I am Yashwanth and I am \(age) years old. I weigh \(weight) kilos."  // Using \() -> We can specify diff variables in a string
print(sentence)

