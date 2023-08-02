import UIKit
enum Gender {
    case male
    case female
    case other
}

struct Car {
    let make: String
    let model: String
    let year: Int
}

class Person {
    let name: String
    let age: Int
    let gender: Gender
    let car: Car
    
    init(name: String, age: Int, gender: Gender, car: Car ) {
        self.name = name
        self.age = age
        self.gender = gender
        self.car = car
    }
}

var male: Gender = .male
var female: Gender = .female
   
print("first type: \(male)")
print("second type: \(female)")

var car1 = Car(make: "Ford", model: "Tiratory", year: 2023)
var car2 = Car(make: "Honda", model: "Accord", year: 2022)

var sakinah = Person(name: "sakinah", age: 25, gender: .female, car: car1)
var mohammed = Person(name: "mohammed", age: 23, gender: .male, car: car2)

print("my name is: \(sakinah.name) age: \(sakinah.age), I am: \(sakinah.gender), my car: \(sakinah.car)")
print("my brother name: \(mohammed.name) age: \(mohammed.age), he is: \(mohammed.gender), his car: \(mohammed.car)")


//MARK: Task 2:
class BankAccount {
    var balance : Double
   
    init(balance : Double) {
        self.balance = balance
    }
    func deposit(amount: Double) {
            balance += amount
            print("Deposited \(amount), Current balance: \(balance)")
        }
        func withdraw(amount: Double) {
            if balance - amount >= 0 {
                balance -= amount
                print("Withdrew \(amount), Current balance: \(balance)")
            } else {
                print("Insufficient balance \(amount), Current balance: \(balance)")
            }
        }
}
var bankAccount1 = BankAccount(balance: 2000)
var bankAccount2 = BankAccount(balance: 3000)

bankAccount1.deposit(amount: 500)
bankAccount2.withdraw(amount: 300)
bankAccount1.withdraw(amount: 1000)

//MARK: Task 3:
enum LoginError: Error {
    case invalidUsername
    case invalidPassword
}

func login(username: String, password: String) throws {
    if username.isEmpty {
        throw LoginError.invalidUsername
    }
    if password.isEmpty {
        throw LoginError.invalidPassword
    }
    print("Login successful!")
}

do {
    try login(username: "admin", password: "password")
    
} catch LoginError.invalidUsername {
    print("Invalid username!")
} catch LoginError.invalidPassword {
    print("Invalid password!")
} catch {
    print("An error occurred: \(error)")
}

do {
    try login(username: "", password: "password")
    print("Login successful!")
} catch LoginError.invalidUsername {
    print("Invalid username!")

} catch LoginError.invalidPassword {
    print("Invalid password!")
} catch {
    print("An error occurred: \(error)")
}

do {
    try login(username: "Sakinah", password: "")
    print("Login successful!")
} catch LoginError.invalidUsername {
    print("Invalid username!")
} catch LoginError.invalidPassword {
    print("Invalid password!")
} catch {
    print("An error occurred: \(error)")
}



//MARK: Task 4:
struct Book {
    var title: String?
    var author: String?
    var publicationYear: Int?
    
    func printInformation() {
        if let title = title {
            print("Title: \(title)")
        } else {
            print("Title: Unavailable")
        }
        
        if let author = author {
            print("Author: \(author)")
        } else {
            print("Author: Unavailable")
        }
        
        if let publicationYear = publicationYear {
            print("Publication Year: \(publicationYear)")
        } else {
            print("Publication Year: Unavailable")
        }
    }
}

let book1 = Book(title: "Money maker", author: "Jone M.", publicationYear: 2023)
book1.printInformation()

let book2 = Book(title: nil, author: "Unknown", publicationYear: 1996)
book2.printInformation()

let book3 = Book(title: nil, author: nil, publicationYear: nil)
book3.printInformation()


//MARK: Task 5:
class Address {
    var streetAddress: String?
    
    init(streetAddress: String?) {
        self.streetAddress = streetAddress
    }
}

class Employee {
    var address: Address?
    
    init(address: Address?) {
        self.address = address
    }
    
    func printStreetAddress() {
        if let streetAddress = address?.streetAddress {
            print("Street Address: \(streetAddress)")
        } else {
            print("Street Address: Unavailable")
        }
    }
}

let address1 = Address(streetAddress: "Dammam street")
let employee1 = Employee(address: address1)
employee1.printStreetAddress()

let address2 = Address(streetAddress: nil)
let employee2 = Employee(address: address2)
employee2.printStreetAddress()


let address3 = Address(streetAddress: nil)
let employee3 = Employee(address: nil)
employee3.printStreetAddress()
