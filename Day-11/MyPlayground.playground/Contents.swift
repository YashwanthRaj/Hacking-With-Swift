// A regular struct
struct BankAccount {
    var fund = 1000
    
    mutating func withdrawCash (cash: Int) {
        fund -= cash
    }
}

var yashwanth = BankAccount()
yashwanth.withdrawCash(cash: 1500)
print(yashwanth.fund)

// In the above example, we have accessed the fund variable and withdrawed more money than available
// We can prevent this by making the fund variable private

struct BankAccount1 {
    private var fund = 1000
    
    mutating func withdrawCash (cash: Int) {
        fund -= cash
    }
}

var yashwanth1 = BankAccount1()
// print(yashwanth1.fund)    -> This line will create an error because fund is now private


// Use of static keyword
struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Taylor Swift")
print(School.studentCount)

// Challenge

struct Car {
    let model: String
    let noSeates: Int
    var currentGear: Int = 1
    
    mutating func changeGear(gear: Int) {
        if (1...10).contains(gear) {
            currentGear = gear
            print("Gear changed to \(currentGear)")
        } else {
            print("Gear not found")
        }
    }
}

var supra = Car(model: "Toyota Supra MK4", noSeates: 2)
print(supra.model, supra.currentGear)

// Change gear to in range value
supra.changeGear(gear: 5)

// Change gear to out of range value
supra.changeGear(gear: 15)
