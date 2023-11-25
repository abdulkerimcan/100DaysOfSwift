import UIKit

// Classes and structs are similar, in that they can both let you create your own types with properties and methods.
class Dog {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    func makeNoise() {
        print("Make noise")
    }
}

// One class can inherit from another, and it gains all the properties and methods of the parent class. It’s common to talk about class hierarchies – one class based on another, which itself is based on another.

class Poddle: Dog {
    override init(name: String) {
        super.init(name: name)
    }
}

// You can mark a class with the final keyword, which stops other classes from inheriting from it
final class FinalDog {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

// Method overriding lets a child class replace a method in its parent class with a new implementation.

class GermanShepherd: Dog {
    override init(name: String) {
        super.init(name: name)
    }
    
    override func makeNoise() {
        print("yip")
    }
}

// When two variables point at the same class instance, they both point at the same piece of memory – changing one changes the other. Because Classes are reference type but structs are value types.

// Classes can have a deinitializer, which is code that gets run when an instance of the class is destroyed.

// Classes don’t enforce constants as strongly as structs – if a property is declared as a variable, it can be changed regardless of how the class instance was created.
