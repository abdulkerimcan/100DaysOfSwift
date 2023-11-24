import UIKit

var greeting = "Hello, playground"

// Arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john,paul,george,ringo]
beatles.first


// Sets

// Unordered example red , blue , green
let colors = Set(["green","red","blue"])
// No item can appear twice in a set; all items must be unique
let colors2 = Set(["green","red","blue","red"])

// Tuples

/*
 Tuples allow you to store several values together in a single value. That might sound like arrays, but tuples are different:

 You can’t add or remove items from a tuple; they are fixed in size.
 You can’t change the type of items in a tuple; they always have the same types they were created with.
 You can access items in a tuple using numerical positions or by naming them, but Swift won’t let you read numbers or names that don’t exist.
 */

let name = (first: "Taylor", last: "Surname")

name.first
name.0

// Dictionary

let heights: [String : Double] = [
    "Taylor Swift" : 1.72,
    "Erling Haaland" : 1.92
]

heights["Taylor Swift"]

// we can provide the dictionary with a default value to use if we request a missing key.
heights["Eminem", default: 1.77]


// Enum

enum Result: String {
    case success = "Success"
    case failure = "Failure"
}

let result = Result.failure.rawValue

enum Activity {
    case bored
    case playing(game: String)
    case talking(topic: String)
    case singing(song: String)
}

let playing = Activity.playing(game: "Football")
