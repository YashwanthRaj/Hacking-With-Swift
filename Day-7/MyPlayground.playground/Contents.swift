import UIKit

// Function Declaration
func printNumbers() {
    print("The numbers that I want to print are 9454035")
}

// Function Call
printNumbers()

print()

// Function with parameters
func tablePrint(num1: Int, end: Int) {
    print("\(num1) Tables")
    for i in 1...end {
        print("\(num1) * \(i) = \(num1*i)")
    }
}

tablePrint(num1: 2,end: 12)


// Return fuctionality. Here in function declaration we need to declare what we are returning
func addition(number1: Int, number2: Int) -> Int {
    return (number1 + number2)
}

var a:Int = addition(number1: 2, number2: 2)

// Function that will check if given two strings have same letters regardless of the order

func checkTwoString(str1: String, str2: String) -> Bool {
    
//    var newstr1 = str1.sorted()
//    var newstr2 = str2.sorted()
//    
//    return newstr1 == newstr2
    
    return str1.sorted() == str2.sorted()
}

var theanswer = checkTwoString(str1: "abcd", str2: "cdab")
print(theanswer)

// Sample functions to denote that we do not need return if our code is only single line
func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}


func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
let firstName = user.firstName
let lastName = user.lastName

print("Name: \(firstName) \(lastName)")


// Including underscore in the parameter to remove parameter name outside the function
func isUppercase(_ string: String) -> Bool {
string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string)


// Custom label
func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)
