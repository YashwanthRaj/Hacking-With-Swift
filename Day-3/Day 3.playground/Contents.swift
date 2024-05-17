// Day 3 - Complex data types, part 1

// ARRAYS
// Array declaration
var beatles = ["John", "Paul", "George", "Ringo"]  // Array of strings
let numbers = [4, 8, 15, 16, 23, 42]  // Array of numbers
var temperatures = [25.3, 28.2, 26.4]  // Array of decimals

// Accessing the elements
print(beatles[0])
print(numbers[1])
print(temperatures[2])

// Adding elements
beatles.append("Adrian")
beatles.append("Allen")
beatles.append("Adrian")
beatles.append("Novall")
beatles.append("Vivian")


// Array specialized to int
var scores = Array<Int>()  // We have specified the data type of array. The () will have the max length of elements entered inside
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])

// Diff ways of declaration [String datatype in this example]
var albums = Array<String>()
var albums1 = [String]()
var albums2 = ["Folklore"]

// Counting the number of elements in an array
print(beatles.count)

// Removing element according to the position
print(beatles)
beatles.remove(at: 1) // Removes second element
print(beatles)

// Removing all elements
beatles.removeAll()
print(beatles)

// Adding elements for future functions
beatles.append("Adrian")
beatles.append("Allen")
beatles.append("Adrian")
beatles.append("Novall")
beatles.append("Vivian")

// check if the array contains particular element
print(beatles.contains("Allen"))

// sort an array
print(beatles.sorted())   // Sorted in alphabetical order

// reverse an array
var reversed_beatles = beatles.reversed()  // This function not only reverses the array, but also remembers that this is a reversed array
print(reversed_beatles)


// DICTIONARIES
// Declaration
let employee = ["name": "Taylor Swift", "job": "Singer", "location": "Nashville"]  //  Key value pair

// Reading values from dictionary, we use the keys
print(employee["name"])  // We can notice that the result shows optional. What this means is that we can specify the key, but the value may not be present

// To solve this issue, we provide default value that will be returned when key is not present
print(employee["name", default: "Unknown"])

// Declaration with diff types of data types
let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false,
]



let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]

print(olympics[2012, default: "Unknown"])


var heights = [String: Int]()   // Here we have crated a dictionary and added values one by one
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206


// SETS
// Declaration
let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(people)


// Adding new elements
var people1 = Set<String>()
people1.insert("Denzel Washington")
people1.insert("Tom Cruise")
people1.insert("Nicolas Cage")
people1.insert("Samuel L Jackson")

print(people1)


// ENUM
// Declaration
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}


// Now we can use this values for our created variables
var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday

// Another type of declaration
// The variables datatype is decided when we create them. Hence in the next time when we assign new values to them, we just put . and then choose the value
enum Weekday1 {
    case monday, tuesday, wednesday, thursday, friday
}

var day1 = Weekday1.monday
day = .tuesday
day = .friday
