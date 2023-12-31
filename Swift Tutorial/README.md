# 100DaysOfSwift

## Day 1-10

### Tuple 
Tuples allow you to store several values together in a single value. That might sound like arrays, but tuples are different:

You can’t add or remove items from a tuple; they are fixed in size.
You can’t change the type of items in a tuple; they always have the same types they were created with.
You can access items in a tuple using numerical positions or by naming them, but Swift won’t let you read numbers or names that don’t exist.

### Enum
Enums are a way of grouping related values so you can use them without spelling mistakes.
You can attach raw values to enums so they can be created from integers or strings, or you can add associated values to store additional information about each case.

### inout parameters 
All parameters passed into a Swift function are constants, so you can’t change them. If you want, you can pass in one or more parameters as 'inout', which means they can be changed inside your function, and those changes reflect in the original value outside the function.
```
func doubleInPlace(number: inout Int) {
    number *= 2
}
var myNum = 10 
doubleInPlace(number: &myNum) 
```
now myNum is 20.

### Structs
Structs can have functions inside them, and those functions can use the properties of the struct as they need to. Functions inside structs are called methods, but they still use the same func keyword.
The only real difference is that methods belong to a type, such as structs, enums, and classes, whereas functions do not. That’s it – that’s the only difference.

When you want to change a property inside a method, you need to mark it using the mutating keyword
```
struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}
```
