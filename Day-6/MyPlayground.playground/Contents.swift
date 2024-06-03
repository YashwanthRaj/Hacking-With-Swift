let operating_system = ["Mac OS", "Watch OS", "ipad OS"]

for os in operating_system {
    print("The best os in my opinion is \(os)")
}

for i in 1...12 {                      // The ... will return range from 1 to 12
    print("5 * \(i) = \(i * 5)")
}

// We can nest loops inside one another

for i in 1...10 {
    print("The \(i)th table: ")
    
    for j in 1...12 {
        print("     \(i) x \(j) = \(i * j)")
    }
    
    print()    // This will print a new line
}

for i in 1..<5 {
    print("The numbers are \(i)")
}


// In conditions where we need the loop to run certain number of times, and we dont care about the loop variable, we use _
var loopvar:String = "Haters Gonna "

for _ in 1...4 {
    loopvar += "Hate "
}

print(loopvar)


// While loops
var countdown = 10

while countdown > 0 {
    print(countdown)
    countdown -= 1
}

print("Happy New Year !!!")

//To retrun a value
var random_int = Int.random(in: 1...100)   // Will return a random int between 1 and 100
var random_double = Double.random(in: 0...2) // Will return a random double between o and 2

// Use of break statenent
let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)


// CHECKPOINT

// Your goal is to loop from 1 through 100, and for each number:
// If it’s a multiple of 3, print “Fizz”
// If it’s a multiple of 5, print “Buzz”
// If it’s a multiple of 3 and 5, print “FizzBuzz”
// Otherwise, just print the number.
//

for num in 1...100 {
    if num.isMultiple(of: 3) {
        if num.isMultiple(of: 5){
            print("FizzBuzz")
        }
        else {
            print("Fizz")
        }
    } else if num.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(num)
    }
}


// Alternate solution

for num in 1...100 {
    if num.isMultiple(of: 3) && num.isMultiple(of: 5) {
        print("FizzBuzz")
    } else if num.isMultiple(of: 3) {
        print("Fizz")
    } else if num.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(num)
    }
}
