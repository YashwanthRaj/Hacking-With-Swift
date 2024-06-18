// Protocols defined here, so will autofill when they are declared in the code following the protocol
protocol Vehicle {
    var name: String {get}
    var currentPassengers: Int {get set}
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {    // Struct car following the protocol
    let name = "Hyundai"
    var currentPassengers = 3
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("You have travelled \(distance)")
    }
    
    func openSunroof() {
        print("Its a beautiful day!!")
    }
}

func commute(distance: Int, using vehicle: Car) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("Thats too long!!")
    } else {
        vehicle.travel(distance: distance)
    }
}

let mazda = Car()
commute(distance: 100, using: mazda)


// Equatable
func getRandomNumber() -> Int {
    Int.random(in: 1...6)
}

func getRandomBool() -> Bool {
    Bool.random()
}

//func getRandomNumber() -> Equatable {
//    Int.random(in: 1...6)
//}
//
//func getRandomBool() -> Equatable {
//    Bool.random()
//}

print(getRandomNumber() == getRandomNumber())

// Opaque return type
func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

// Extensions
//var quote = "   The truth is rarely pure and never simple   "
//let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)

// Everytime we need not write the entire above code to remove space before and after text
// Hence we create extension that we can use

//extension String {
//    func trimmed() -> String {
//        self.trimmingCharacters(in: .whitespacesAndNewlines)
//    }
//}

// Now we can reduce it to this
//let trimmed = quote.trimmed()


// Checkpoint
//Your challenge is this: make a protocol that describes a building, adding various properties and methods, then create two structs, House and Office, that conform to it. Your protocol should require the following:
//
//A property storing how many rooms it has.
//A property storing the cost as an integer (e.g. 500,000 for a building costing $500,000.)
//A property storing the name of the estate agent responsible for selling the building.
//A method for printing the sales summary of the building, describing what it is along with its other properties.

protocol Buildings {
    var noOfRooms: Int { get }
    var costOfBuilding: Int {get set}
    var agentName: String { get }
    
    func printSummary()
}

struct House:Buildings {
    let noOfRooms = 5
    var costOfBuilding = 60000000
    let agentName = "Bill Gates"
    
    func printSummary() {
        print("This building has \(noOfRooms) rooms, cost is \(costOfBuilding) and is sold by \(agentName)")
    }
}

struct Office:Buildings {
    let noOfRooms: Int
    var costOfBuilding:Int
    let agentName: String
    
    func printSummary() {
        print("This building has \(noOfRooms) rooms, cost is \(costOfBuilding) and is sold by \(agentName)")
    }
}

var gwuSEAS = Office(noOfRooms: 87, costOfBuilding: 4567349785689234, agentName: "Tim Cook")
gwuSEAS.printSummary()
