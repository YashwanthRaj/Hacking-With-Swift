class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

// INHERITACE
// Swift classes will let us inherit properties and methods from another class.

// Parent Class
class Employees {
    var name: String
    let hours: Int
    
    init(name: String, hours: Int) {
        self.name = name
        self.hours = hours
    }
    
    func changeName(newName: String) {
        name = newName
        print("The new name is \(name)")
    }
    
    func printDetails(){
        print("The worker name is \(name) and is working for \(hours) hours")
    }
}

// Children Class
final class StudentWorkers: Employees {
    override func printDetails(){
        print("The student worker name is \(name) and is working for \(hours) hours")
    }
}

// Children Class
final class FulltimeWorkers: Employees {
    override func printDetails(){
        print("The Full Time worker name is \(name) and is working for \(hours) hours")
    }
}


var yashwanth = StudentWorkers(name: "Yashwanth Raj Varadharajan", hours: 38)
var saiNikhil = FulltimeWorkers(name: "Sai Nilhil", hours: 40)

yashwanth.printDetails()
saiNikhil.printDetails()

yashwanth.changeName(newName: "Yashwanth Raj")
yashwanth.printDetails()

// Copy of a class
class User {
    var username = "Anonymous"
}
var user1 = User()
var user2 = user1
user2.username = "Taylor"  // Since all copies of a code in swift class point to the same piece of data, this will change in user 1 as well
print(user1.username)
print(user2.username)


// if we want to create a unique copy of a class, then we can create a function to do the same
class User1 {
    var username = "Anonymous"

    func copy() -> User1 {
        let user1 = User1()
        user1.username = username
        return user1
    }
}

var user11 = User1()
var user21 = user11.copy()
user21.username = "Taylor"  // Since all copies of a code in swift class point to the same piece of data, this will change in user 1 as well
print(user11.username)
print(user21.username)


// De initializer
class User2 {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}

for i in 1...3 {   // We are using loops because the loops will destroy the instance when the loop is finished running
    let user = User2(id: i)
    print("User \(user.id): I'm in control!")
}

// When we declare a variable to access the class, the var or let will refer the pointer to the data to the class

class User3 {
    var name = "Paul"
}

var user = User3() // We can make the user point to different data since we have used var keywoed
user.name = "Taylor"
user = User3()
print(user.name)

// Above if we change the declaration to let, then the above code will give an error
