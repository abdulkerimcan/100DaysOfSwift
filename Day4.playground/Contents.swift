import UIKit

// For loop

let count = 1...10

for number in count {
    print("Number is \(number)")
}
print("Players gonna ")

// If you don’t use the constant that for loops give you, you should use an underscore instead so that Swift doesn’t create needless values:
for _ in 1...5 {
    print("play")
}

// While Loop
var number = 1

while number <= 20 {
    print(number)
    number += 1
}
repeat {
    print(number)
    number += 1
} while number <= 20

print("Ready or not, here I come!")


// Exiting multiple loops
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}
