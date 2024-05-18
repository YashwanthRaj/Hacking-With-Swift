// Type annotations
// Declaration without type annotation
var abcd = "Yashwanth Raj Varadharajan"
var numero = 0

// Declaration with type annotation
var abcd1: String = "Yashwanth Raj Varadharajan"
var numero1: Int = 0

// Declaration for various types
let playerName: String = "Roy"
var luckyNumber: Int = 13
let pi: Double = 3.141
var isAuthenticated: Bool = true
var albums: [String] = ["Red", "Fearless"]  //  Arrays
var user: [String: String] = ["id": "@twostraws"]  // Dictionary
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])  //Sets


// Declaration style
let username: String
// lots of complex logic
username = "@twostraws"
// lots more complex logic
print(username)


// Checkpoint - Problem
// Create an array of strings, then write some code that prints the number of items in the array and also the number of unique items in the array

var array1: [String] = ["abdul","yashwanth","sai nilhil","syed","sajib","arnav","sai nilhil","sajib"]   // Sample array that we have created
print("Size of array is :\(array1.count)")

var set1 = Set(array1)
print("Size of array with duplicates removed is :\(set1.count)")
