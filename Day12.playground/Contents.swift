import UIKit

var name: String? = nil

if let unwrapped = name {
    print("there are \(unwrapped.count) characters")
} else {
    print("missing name")
}

// use if let if you just want to unwrap some optionals, but prefer guard let if you’re specifically checking that conditions are correct before continuing.
func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }

    print("Hello, \(unwrapped)!")
}


enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

// The first is try?, and changes throwing functions into functions that return an optional. If the function throws an error you’ll be sent nil as the result, otherwise you’ll get the return value wrapped as an optional.

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}
// The other alternative is try!, which you can use when you know for sure that the function will not fail. If the function does throw an error, your code will crash.

// Failable initializers
/*
 That converts a string to an integer, but because you might try to pass any string there what you actually get back is an optional integer.

 This is a failable initializer: an initializer that might work or might not. You can write these in your own structs and classes by using init?() rather than init(), and return nil if something goes wrong. The return value will then be an optional of your type, for you to unwrap however you want.
 */

struct Person {
    var id: String

    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}
