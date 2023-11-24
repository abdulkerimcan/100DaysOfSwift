import UIKit

// Closure Function

let driving = {
    print("I am driving")
}
driving()

let drivingParameter = { (place: String) in
    print("I'm going to \(place) in my car")
}

drivingParameter("london")

let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivingWithReturn("London")
print(message)

func travel(action: () -> Void) {
    print("I am getting ready to go")
    action()
    print("I arrived")
}

travel(action: driving)


func travel2(action: (String) -> Void) {
    print("I am ready")
    action("London")
    print("arrived")
}

travel2 { city in
    print("I go to \(city)")
}


func travel3(action: ((String) -> String)) {
    print("I am ready")
    let description = action("London")
    print(description)
    print("arrived")
}

travel3 {
    "I went to the \($0)"
}

func travel4(action: ((String,Int) -> String)) {
    print("I am ready")
    let description = action("London",120)
    print(description)
    print("arrived")
}

travel4 {
    "I went to the \($0) with \($1) km per hour"
}

// Returning closures from functions
func travel5() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}
let result = travel5()
result("London")
