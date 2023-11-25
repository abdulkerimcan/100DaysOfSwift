import UIKit

var greeting = "Hello, playground"


let score = 85

switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

// Swift will only run the code inside each case. If you want execution to continue on to the next case, use the fallthrough keyword like this:
let weather = "rain"
switch weather {
case "rain":
    print("Bring an umbrella")
    
    fallthrough
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}
