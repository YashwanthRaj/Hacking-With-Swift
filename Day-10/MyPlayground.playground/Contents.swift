// New struct declaration
// Similar to functions. But has higher level functionality and use cases
struct Album {
    let albumName: String
    let albumSize: Int
    
    func printAlbum() {
        print("The name of the album is \(albumName) and it is \(albumSize) mb in size")
    }
}

// We create a variable name and have a struct with we can have access to its variables and functions
let vikram = Album(albumName: "Anirudh", albumSize: 200)
let meesayaMuruku = Album(albumName: "Hip Hop Tamizha", albumSize: 400)

// We can access the contents of the struct with the variable name the .
print(vikram.albumName)

vikram.printAlbum()


// Struct with functions that can make changes to the variables declared inside a struct

struct Employee {
    let name: String
    var vacationRemaining: Int = 30   // Default value

    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)


// Getter and Setter
// The getter will run when the its called. And setter will run when we assign a new value
// new value is a keyword that is provided inside the setter which will denote what do to when a new valuse is provided
struct Employees {
    let empName: String
    var vacationAllocated: Int
    var vacationTaken: Int
    
    var vacationRemaining: Int{
        get {
            vacationAllocated - vacationTaken
        }
        set {
            vacationAllocated = vacationTaken + newValue
        }
        
    }
}

var emp1 = Employees(empName: "Jack", vacationAllocated: 15, vacationTaken: 3)

// Getter code will run
print(emp1.vacationAllocated)

// Now the setter code will run
emp1.vacationRemaining = 5
print(emp1.vacationAllocated)

// Didset will run whenever the value of the variable changes
struct Game {
    var score = 0 {
        didSet{
            print("The new updated score is \(score)")
        }
    }
}

var football = Game()
football.score += 5
football.score += 5


// willset and didset
struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }

        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")


// An example to showcase default initializer for the player
struct Player {
    let name: String
    let number: Int
    
    // This code is used when the player is called when we create a variable and pass in values
    // Below code is not mandatory if we are not going to use default initializer 
    init(name: String, number: Int) {
        self.name = name
        self.number = number
    }
}


// Custom initializer
struct Player1 {
    let name: String
    let number: Int

    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player = Player1(name: "Megan R")
print(player.number)
