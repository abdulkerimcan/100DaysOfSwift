import UIKit

struct Sport {
    var name: String
    var isOlympicSport: Bool
    var olympicStatus: String {
        if isOlympicSport {
            return "It is an olympic sport"
        } else {
            return "It is not an olympic sport"
        }
    }
}

var tennis = Sport(name: "Tennis", isOlympicSport: false)
print(tennis.name)
tennis.name = "Lawn tennis"
print(tennis.name)
print(tennis.olympicStatus)


struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}
var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

// Structs can have functions inside them, and those functions can use the properties of the struct as they need to. Functions inside structs are called methods, but they still use the same func keyword.

struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
    
}
let london = City(population: 9_000_000)
london.collectTaxes()

//When you want to change a property inside a method, you need to mark it using the mutating keyword, like this:
struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}
var person = Person(name: "Ed")

person.makeAnonymous()

/* As a performance optimization, Swift lets you create some properties only when they are needed. As an example, consider this FamilyTree struct – it doesn’t do much, but in theory creating a family tree for someone takes a long time:
 */

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Human {
    var name: String
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = Human(name: "Ed")
ed.familyTree
